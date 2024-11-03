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


variable "instances" {
  default = {
    frontend  = {}
    mongodb   = {}
    catalogue = {}
    rabitmq   = {}
    mysql     = {}
    redis     = {}
    shipping  = {}
    user      = {}
    cart      = {}
    payment   = {}
  }
}

resource "aws_instance" "instance" {

  for_each        = var.instances
  ami             = "ami-0866a3c8686eaeeba"
  instance_type   = "t2.micro"
  security_groups = ["sg-04b7aa6a4d8b784ff"]

  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "records" {
  for_each = var.instances
  zone_id  = "Z09676972D3TLVDAAER4V"
  name     = "$(each.key)-dev.aim4devops.online"
  type     = "A"
  ttl      = 30
  records  = [aws_instance.instance[each.key].private_ip]
}