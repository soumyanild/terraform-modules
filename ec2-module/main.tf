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

data "terraform_remote_state" "vpc" {
    backend = "s3"
    config = {
        bucket  = "terraform-soumyanild"
        key     = "terraform-project/subnet-module/terraform.tfstate"
        region  = "ap-south-1"
    }
}

resource "aws_instance" "public_instance" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  subnet_id = "${data.terraform_remote_state.vpc.outputs.dev_public_1_id}"

  tags = {
    Name = "EC2-Module-1"
  }
}

resource "aws_instance" "private_instance" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  subnet_id = "${data.terraform_remote_state.vpc.outputs.dev_private_2_id}"
  
  tags = {
    Name = "EC2-Module-2"
  }
}
