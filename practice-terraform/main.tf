output "URL" {
  value = "www.example.com"
}

variable "URL1" {
  default = "www.example.com"
}

output "URL1" {
  value = "URL - ${var.URL1}"
}

variable "num1" {
  default = 10
}

variable "str1" {
  default = "str"
}

variable "bool1" {
  default = true
}

variable "list1" {
  default = [
    10,
    "string",
    false
  ]
}

variable "map1" {
  default = {
    aws = {
      trainer = "steve"
      default = 10
    }
    devops = {
      trainer = "john"
      default = 20
    }
  }
}

output "list1" {
  value = var.list1[1]
}
output "map1" {
  value = var.map1["aws"]["trainer"]
}

#we can declare an empty variable and we can get the value from the CLI

variable "trainer_name" {}

output "trainer_name" {
  value = var.trainer_name
}

#for_each

variable "fruits" {
  default = {
    apple  = {}
    orange = {}
    grape  = {}
  }
}

resource "null_resource" "fruits" {
  for_each = var.fruits
}

