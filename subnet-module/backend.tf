terraform {
  backend "s3" {
    bucket = "terraform-soumyanild"
    key    = "terraform-project/subnet-module/terraform.tfstate"
    region = "ap-south-1"

  }
}
