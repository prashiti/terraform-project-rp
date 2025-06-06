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
  region = "eu-west-2"
}
resource "aws_instance" "instance-test" {
    ami = "ami-0072acb6a5a03c449"
    instance_type = "t2.micro"

    tags = {
    Name = "terraform-instance"
}
  
}