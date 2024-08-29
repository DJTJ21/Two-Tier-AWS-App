terraform {
  backend "s3" {
    bucket         = "romuald-aws-baket1"
    region         = "eu-north-1"
    key            = "Two-Tier-aws-app/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}