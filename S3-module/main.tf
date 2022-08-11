resource "aws_s3_bucket" "s3-module" {
  bucket = "my-s3-bucket"
  acl    = "private"
  }
