terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ""
    }
  }
}

provider "aws" {
    region = var.aws_region
}