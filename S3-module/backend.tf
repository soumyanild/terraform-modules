terraform {
  backend "s3" {
    bucket = "terraform-soumyanild"
    key    = "terraform-project/S3-module/terraform.tfstate"
    region = "ap-south-1"

  }
}
