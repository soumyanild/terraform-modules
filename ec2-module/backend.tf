terraform {
  backend "s3" {
    bucket = "terraform-soumyanild"
    key    = "terraform-project/ec2-module/terraform.tfstate"
    region = "ap-south-1"

  }
}
