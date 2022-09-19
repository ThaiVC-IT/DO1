provider "aws" {
  access_key = "nhập access key ở đây"
  secret_key = "nhập secret key ở đây"
  region = "us-east-1"
}


resource "aws_instance" "book-server" {
  ami = "nhập ami image của aws vào đây"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_web.id]
}

data "aws_default_vpc" "default" {
}

resource "aws_security_group" "allow_web" {
  
}

output "aws_instance_public_dns" {
  value = aws_instance.nginx.public_dns
}
