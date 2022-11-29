terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.12.1"
    }
  }
backend "s3" {
    bucket = "bucket-upgradassignment"
    key    = "root/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}
