terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.60.0"
    }
  }
  backend "s3" {
    bucket = "training-01-10"
    key    = "test/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-test-state-table"
  }
}
provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-west-2"
}
