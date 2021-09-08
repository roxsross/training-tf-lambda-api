# Input variable definitions

locals {
  function_name = "${var.app_id}-${var.app_env}"
  common_tags = {
    environment = var.app_env
    product_name = "${var.app_id}-${var.app_env}"
    deployment_type = "terraform"
    info_appid = "Demo"   
  }
}

variable "app_id" {
  description = "Nombre Lambda"
  type = string
  default = "demo-serverless"
}

variable "app_env" {
  description = "Ambiente Despliegue"
  type = string
  default = "dev"
}

variable "aws_region" {
  description = "AWS region for all resources."
  type    = string
  default = "us-east-1"
}

variable "aws_profile" {
  description = "AWS profile."
  type    = string
  default = "roxsross"
}

variable "repo_url" {
  description = "URL que usa el repositorio"
  type = string
  default = "https://github.com/roxsross/training-tf-lambda-api"
}

variable "lambda_package" {
  description = "Path archivo ZIP a ser desplegado en AWS"
  type = string
  default = "../function.zip"
}