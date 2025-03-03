// output vpc id
output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "value of vpc id"
}

output "vpc_arn" {
  value       = module.vpc.vpc_arn
  description = "value of vpc arn"
}

output "public_subnet_id" {
  value       = module.vpc.public_subnet_id
  description = "value of the public subnet id"
}

output "public_subnet_arn" {
  value       = module.vpc.public_subnet_arn
  description = "value of the public subnet arn"
}

output "private_subnet_id" {
  value       = module.vpc.private_subnet_id
  description = "value of the private subnet id"
}

output "private_subnet_arn" {
  value       = module.vpc.private_subnet_arn
  description = "value of the private subnet arn"
}

output "private_subnet_rds_id" {
  value       = module.vpc.private_subnet_rds_id
  description = "value of the private rds subnet id"
}

output "private_subnet_rds_arn" {
  value       = module.vpc.private_subnet_rds_arn
  description = "value of the private rds subnet arn"
}

output "availability_zone" {
  value       = module.vpc.availability_zone
  description = "value of the availability zone"
}

output "availability_zone_rds" {
  value       = module.vpc.availability_zone_rds
  description = "value of the availability zone for RDS. It is mandatory to have 2 different AZ to deploy a RDS"
}

output "vpc_enable_dns_hostnames" {
  value       = module.vpc.vpc_enable_dns_hostnames
  description = "true if dns hostnames are enabled on the VPC"
}

output "igw_id" {
  value       = module.vpc.igw_id
  description = "value of the internet gateway id"
}

output "igw_arn" {
  value       = module.vpc.igw_arn
  description = "value of the internet gateway arn"
}

output "rta_id" {
  value       = module.vpc.rta_id
  description = "value of the route table id"
}

output "rta_arn" {
  value       = module.vpc.rta_arn
  description = "value of the route table arn"
}
