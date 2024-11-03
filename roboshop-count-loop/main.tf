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
  default = [
    "frontend",
    "mongodb",
    "catalogue",
    "rabitmq",
    "mysql",
    "redis",
    "shipping",
    "user",
    "cart",
    "payment"
  ]
}

resource "aws_instance" "instance" {
  count         = length(var.instances)
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "recrods" {
  count   = length(var.instances)
  zone_id = "Z09676972D3TLVDAAER4V"
  name    = "$(var.instances[count.index])-dev.aim4devops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance[count.index].private_ip]
}