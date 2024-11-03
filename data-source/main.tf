terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "frontend" {
  ami             = data.aws_ami.ami.id
  instance_type   = "t2.micro"
  vpc_security_group_ids = data.aws_security_group.sg.id

  tags = {
    Name = "frontend"
  }
}

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}

data "aws_security_group" "sg" {
  name="allow-all"
}