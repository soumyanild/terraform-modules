resource "aws_vpc" "module" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"
  tags = {
    Name = "terra-bitbucket"
    Terraform = "True"
    Owner = "Soumyanil"
  }
}
