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

resource "aws_instance" "myserver" {
  ami = "ami-0aba19e56f3eaec05"
  instance_type = "t3.micro"

  tags = {
    Name = "EC2-Sample-Server"
  }
}

resource "random_id" "random_id" {
  byte_length = 8
}