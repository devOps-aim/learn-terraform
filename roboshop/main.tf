resource "aws_instance" "workstation" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "workstation"
  }
}


resource "aws_instance" "frontend" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "frontend"
  }
}

resource "aws_instance" "mongodb" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "mongodb"
  }
}


resource "aws_instance" "catalogue" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "catalogue"
  }
}


resource "aws_instance" "redis" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "redis"
  }
}

resource "aws_instance" "user" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "user"
  }
}

resource "aws_instance" "cart" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "cart"
  }
}

resource "aws_instance" "mysql" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "mysql"
  }
}


resource "aws_instance" "shipping" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "shipping"
  }
}


resource "aws_instance" "rabbitmq" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "rabbitmq"
  }
}

resource "aws_instance" "payment" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "payment"
  }
}


resource "aws_instance" "dispatch" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags={
    Name = "dispatch"
  }
}




