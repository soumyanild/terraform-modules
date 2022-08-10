terraform {
  backend "s3" {
    bucket = "terraform-soumyanild"
    key    = "terraform-project/Backend/terraform.tfstate"
    region = "ap-south-1"

  }
}
