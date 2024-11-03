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

module "learn-module" {
  for_each = var.instances
  source = "./module"
  component_name = each.key
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
