terraform {
  backend "s3" {
    bucket = "soumyanil-bucket"
    key    = "terraform-project/ec2/terraform.tfstate"
    region = "ap-south-1"

  }
}
