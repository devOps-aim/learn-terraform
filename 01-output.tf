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