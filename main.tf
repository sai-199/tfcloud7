terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
resource "aws_instance" "app_server" {
  ami           = "ami-09ac68f361e5f4a13"
  instance_type = "t2.small"
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
this is the end file
