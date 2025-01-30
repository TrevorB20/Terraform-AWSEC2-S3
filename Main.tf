terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#Creating EC2 Instance

resource "aws_instance" "web" {
  ami           = "ami-0c614dee691cbbf37"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 1"
  }
}