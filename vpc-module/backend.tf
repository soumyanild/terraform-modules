terraform {
  backend "s3" {
    bucket = "terraform-soumyanild"
    key    = "terraform-project/vpc-module/terraform.tfstate"
    region = "ap-south-1"

  }
}
