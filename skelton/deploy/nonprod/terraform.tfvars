## Lambda Function
lambda_name        = "${{ values.lambda_name }}"
lambda_runtime     = "${{ values.lambda_runtime }}"
lambda_handler     = "${{ values.lambda_handler }}"
lambda_source_file = "${{ values.lambda_source_file }}"
lambda_layers      = [${{ values.lambda_layers }}]

## API Gateway
api_name           = "${{ values.api_name }}"
stage_name         = "${{ values.stage_name }}"
http_method        = "${{ values.http_method }}"
api_path_part      = "${{ values.api_path_part }}"

## DynamoDB Table
table_name         = "${{ values.table_name }}"
partition_key      = "${{ values.partition_key }}"
sort_key           = "${{ values.sort_key }}"

## Application configuration
application_name   = "${{ values.application_name }}"
environment        = "${{ values.environment }}"
team               = "${{ values.team }}"
region             = "${{ values.region }}"