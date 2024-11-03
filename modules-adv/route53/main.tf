resource "aws_route53_record" "recrods" {
  zone_id = "Z09676972D3TLVDAAER4V"
  name    = "$(var.instnace_name)-dev.aim4devops.online"
  type    = "A"
  ttl     = 30
  records = [var.ip_address]
}

variable "instance_name" {}
variable "ip_address" {}