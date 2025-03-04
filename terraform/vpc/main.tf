module "vpc" {
  source = "./_modules/vpc"

  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidr   = "10.0.1.0/24"
  public_secondary_subnet_cidr = "10.0.4.0/24"
  private_subnet_cidr  = "10.0.2.0/24"
  private_secondary_subnet_cidr = "10.0.3.0/24"
  availability_zone    = "eu-west-1a"
  availability_zone_secondary = "eu-west-1b"

  tags                 = var.tags
}
