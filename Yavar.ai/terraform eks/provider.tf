terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }


backend "s3" {
    bucket         = "newjstets"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
}
