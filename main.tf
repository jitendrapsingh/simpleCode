provider "aws" {
  region     = var.REGION
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY
}

resource "aws_instance" "web" {
    ami           = "ami-04bf89f1458bbef8a"
    instance_type = "t2.micro"

  tags = {
  Name = "HelloWorld"
  }
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
