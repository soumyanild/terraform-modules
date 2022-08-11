terraform {
  backend "s3" {
    bucket = "terraform-soumyanild"
    key    = "terraform-project/rds-module/terraform.tfstate"
    region = "ap-south-1"

  }
}
