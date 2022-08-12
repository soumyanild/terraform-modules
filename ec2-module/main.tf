provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-soumyanild"
    key    = "terraform-project/ec2-module/terraform.tfstate"
    region = "ap-south-1"
    }
}

resource "aws_instance" "public_instance" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  subnet_id = "subnet-04a3c861a566c63cf"

  tags = {
    Name = "EC2-Module-1"
  }
}

resource "aws_instance" "private_instance" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  subnet_id = "subnet-022165498b59b0688"
  
  tags = {
    Name = "EC2-Module-2"
  }
}
