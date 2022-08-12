data "terraform_remote_state" "vpc" {
    backend = "s3"
    config = {
        bucket  = "terraform-soumyanild"
        key     = "terraform-project/subnet-module/terraform.tfstate"
        region  = "ap-south-1"
    }
}

resource "aws_db_subnet_group" "db-subnet-group" {
subnet_ids = ["${data.terraform_remote_state.vpc.dev_private_1_id}" , "${data.terraform_remote_state.vpc.dev_private_2_id}"]
}

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
