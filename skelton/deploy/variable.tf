variable "lambda_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_runtime" {
  description = "Runtime for the Lambda function (e.g., python3.9)"
  type        = string
}

variable "lambda_handler" {
  description = "Handler for the Lambda function (e.g., index.handler)"
  type        = string
}

variable "lambda_source_file" {
  description = "Path to the Lambda source code zip file"
  type        = string
}

variable "api_name" {
  description = "Name of the API Gateway"
  type        = string
}

variable "stage_name" {
  description = "Stage name for API Gateway (e.g., dev, prod)"
  type        = string
}

variable "region" {
  description = "AWS region for resource deployment"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, staging, prod)"
  type        = string
}

variable "team" {
  description = "Team name or cost allocation tag"
  type        = string
}

variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "partition_key" {
  description = "Partition key for the DynamoDB table"
  type        = string
}

variable "sort_key" {
  description = "Sort key for the DynamoDB table"
  type        = string
}

variable "lambda_layers" {
  description = "List of Lambda Layer ARNs to attach to the Lambda function"
  type        = list(string)
  default     = []
}