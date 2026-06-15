terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.50.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}


resource "random_id" "random_id" {
  byte_length = 8
}