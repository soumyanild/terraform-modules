resource "aws_db_instance" "rds_test" {
allocated_storage    = 10
engine               = "mysql"
engine_version       = "5.7"
instance_class       = "db.t2.micro"
identifier           = "rds-module"
username             = "soumyanil"
password             = "nilzyboy37"
skip_final_snapshot  = false
}
resource "aws_db_instance" "rds_demo" {
allocated_storage    = 10
engine               = "mysql"
engine_version       = "5.7"
instance_class       = "db.t2.micro"
identifier           = "rds-modules"
username             = "soumyanil"
password             = "nilzyboy37"
skip_final_snapshot  = false
}
