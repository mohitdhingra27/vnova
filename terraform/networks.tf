module "vpc" {
  name    = "foo-vpc"
  source  = "terraform-aws-modules/vpc/aws"

  cidr = "10.8.0.0/16"

  azs = [
    "${data.aws_availability_zones.available.names[0]}",
    "${data.aws_availability_zones.available.names[1]}",
  ]

  private_subnets  = var.private_subnets
  public_subnets   = var.public_subnets
  database_subnets = var.database_subnets

  create_database_subnet_group = false
}

