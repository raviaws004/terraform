terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.12.0"
    }
  }

  backend "s3" {
    bucket         = "raviaws007-state-dev"
    key            = "vpc-test"
    region         = "us-east-1"
    dynamodb_table = "raviaws007-lock-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}
