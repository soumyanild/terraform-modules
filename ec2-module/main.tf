provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "nilzmann37-s3-bucket"
    key    = "terraform-project/ec2-module/terraform.tfstate"
    region = "ap-south-1"
    }
}

resource "aws_instance" "public_inst_1" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-Module"
    IAC = "True"
  }
}
