#declare variables
variable "images" {
  type = map(string)
  default = {
    "eu-central-1"   = "ami-0dcc0ebde7b2e00db"
  }
}

variable "access_key" {
  description = "AWS Access key"
  type = string
}
variable "secret_key" {
  description = "AWS Secret key"
  type = string
}

variable "private_key_name" {
  description = "AWS Private key name"
  type = string
}

variable "private_key_local_path" {
  description = "AWS Private key local file path"
  type = string
}

variable "region" {
  default = "eu-central-1"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "subnet_one_cidr" {
  default = "10.0.1.0/24"
}
variable "subnet_two_cidr" {
  default = ["10.0.2.0/24", "10.0.3.0/24"]
}
variable "route_table_cidr" {
  default = "0.0.0.0/0"
}
variable "web_ports" {
  default = ["22", "80", "443", "3306"]
}
variable "db_ports" {
  default = ["22", "3306"]
}

#get AZ's details
data "aws_availability_zones" "availability_zones" {}