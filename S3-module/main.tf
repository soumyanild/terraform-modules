resource "aws_s3_bucket" "s3-module" {
  bucket = "my_s3_bucket"
  acl    = "private"
  }
