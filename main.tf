terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

resource "aws_instance" "Terraform_EC2" {
  ami           = "ami-053b0d53c279acc90"  # Amazon Linux 2 AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}