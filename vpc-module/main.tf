provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "nilzmann37-s3-bucket"
    key    = "terraform-project/backend/terraform.tfstate"
    region = "ap-south-1"
    }
}
resource "aws_vpc" "module" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"
  tags = {
    Name = "terra-bitbucket"
    Terraform = "True"
    Owner = "Soumyanil"
  }
}
