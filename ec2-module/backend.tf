terraform {
  backend "s3" {
    bucket = "nilzmann37-s3-bucket"
    key    = "terraform-project/ec2-module/terraform.tfstate"
    region = "ap-south-1"
    }
}
