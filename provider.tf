terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }

  backend "s3" {
    bucket = "dev-remotestate-s3-proj"
    key = "vpc_dev_testing"
    region = "us-east-1"
    dynamodb_table = "dev-remotestate-DB-proj"
    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
