terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.60.0"
    }
  }
  backend "s3" {
    bucket = "venkatasurendra-terraformbucket"
    key    = "test/terraform.tfstate"
    region = "us-west-1"
  }
}
provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-west-1"
}
