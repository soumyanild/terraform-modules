module "ec2-module" {
  source = ".//ec2-module"
}

module "rds-module" {
  source = ".//rds-module"
}

module "vpc-module" {
  source = ".//vpc-module"
}

module "subnet-module" {
  source = ".//subnet-module"
}

module "S3-module" {
  source = ".//S3-module"
}

