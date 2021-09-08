provider "aws" {
  region                  = var.aws_region
  profile                 = var.aws_profile
  shared_credentials_file = "~/.aws/credentials"
}

terraform {
  backend "s3" {
    bucket         = "iac-tf-bucket-s3"
    region         = "us-east-1"
    encrypt        = true
    key            = "demo/deploy.tfstate"
  }
}

