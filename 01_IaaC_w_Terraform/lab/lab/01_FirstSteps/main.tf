provider "aws" {
  access_key = ""
  secret_key = ""
  region = "eu-central-1"
}

resource "aws_instance" "vm1" {
  ami = "ami-0dcc0ebde7b2e00db"
  instance_type = "t2.micro"
  key_name = "ec3tk"
}

output "public_ip" {
  value = aws_instance.vm1.public_ip
}

output "public_dns" {
  value = aws_instance.vm1.public_dns
}