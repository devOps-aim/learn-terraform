resource "aws_instance" "workstation" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "workstation"
  }
}


