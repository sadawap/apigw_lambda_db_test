provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 0.15.0"
  backend "s3" {
    acl     = "private"
    encrypt = true
  }
}

module "apigw_lambda_db_deployment" {
  source = "git::https://github.com/Ascentt-Business-Systems/Ascentt-infra.git//deployment_patterns/apigw_lambda_db_deployment?ref=main"

  # Lambda function
  lambda_name        = var.lambda_name
  lambda_runtime     = var.lambda_runtime
  lambda_handler     = var.lambda_handler
  kms_key_arn        = module.aws_kms_key.custom_key.arn
  lambda_source_file = "${path.module}/../src/lambda_function.zip"
  lambda_layers      = var.lambda_layers

  # API Gateway
  api_name           = var.api_name
  stage_name         = var.stage_name
  lambda_arn         = module.lambda.lambda_arn

  # DynamoDB Table
  table_name         = var.table_name
  partition_key      = var.partition_key
  sort_key           = var.sort_key
  
  #Application configuration
  application_name   = var.application_name
  environment        = var.environment
  team               = var.team
  region             = var.region
}


