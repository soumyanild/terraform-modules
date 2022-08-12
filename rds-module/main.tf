resource "aws_db_instance" "private_rds" {
allocated_storage    = 20
engine               = "mysql"
engine_version       = "5.7"
instance_class       = "db.t2.micro"
identifier           = "another-test-db"
db_name              = "mysqltestdb"
username             = "soumyanil"
password             = "code1234"
publicly_accessible  = false
skip_final_snapshot  = true
db_subnet_group_name = "${aws_db_subnet_group.db-subnet-group.name}"
}

module "db_subnet_group" {
  source = "terraform-modules/subnet-module/"
}
