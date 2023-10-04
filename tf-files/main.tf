terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"

  backend "s3" {
    bucket = "mohtaoversion2"
    key    = "terraform-state"
    region = "eu-west-2"
  }
}

provider "aws" {
  #profile = "terraform"
  region  = "eu-west-2"
}