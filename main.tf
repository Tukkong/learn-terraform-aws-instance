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
  region = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0beaa649c482330f7"
  instance_type = "t2.micro"
  key_name = "linux-Ohio"

  tags = {
    Name = "InstanceUseTerraform"
  }
}
