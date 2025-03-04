// VPC outputs
output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID du VPC"
}

output "vpc_arn" {
  value       = module.vpc.vpc_arn
  description = "ARN du VPC"
}

output "vpc_cidr" {
  value       = module.vpc.vpc_cidr
  description = "CIDR block du VPC"
}

output "vpc_enable_dns_hostnames" {
  value       = module.vpc.vpc_enable_dns_hostnames
  description = "Indique si les DNS hostnames sont activés sur le VPC"
}

// Subnet outputs
output "public_subnet_id" {
  value       = module.vpc.public_subnet_id
  description = "ID du sous-réseau public"
}

output "public_subnet_arn" {
  value       = module.vpc.public_subnet_arn
  description = "ARN du sous-réseau public"
}

output "public_secondary_subnet_id" {
  value       = module.vpc.public_secondary_subnet_id
  description = "ID du sous-réseau public secondaire"
}

output "public_secondary_subnet_arn" {
  value       = module.vpc.public_secondary_subnet_arn
  description = "ARN du sous-réseau public secondaire"
}

output "private_subnet_id" {
  value       = module.vpc.private_subnet_id
  description = "ID du sous-réseau privé"
}

output "private_subnet_arn" {
  value       = module.vpc.private_subnet_arn
  description = "ARN du sous-réseau privé"
}

output "private_secondary_subnet_id" {
  value       = module.vpc.private_secondary_subnet_id
  description = "ID du sous-réseau privé secondaire"
}

output "private_secondary_subnet_arn" {
  value       = module.vpc.private_secondary_subnet_arn
  description = "ARN du sous-réseau privé secondaire"
}

// Availability Zone outputs
output "availability_zone" {
  value       = module.vpc.availability_zone
  description = "Zone de disponibilité principale"
}

output "availability_zone_secondary" {
  value       = module.vpc.availability_zone_secondary
  description = "Zone de disponibilité secondaire"
}

// Gateway outputs
output "igw_id" {
  value       = module.vpc.igw_id
  description = "ID de la passerelle Internet"
}

output "igw_arn" {
  value       = module.vpc.igw_arn
  description = "ARN de la passerelle Internet"
}

output "nat_gateway_id" {
  value       = module.vpc.nat_gateway_id
  description = "ID de la NAT Gateway"
}

// Route table outputs
output "rta_id" {
  value       = module.vpc.rta_id
  description = "ID de la table de routage publique (pour compatibilité)"
}

output "rta_arn" {
  value       = module.vpc.rta_arn
  description = "ARN de la table de routage publique (pour compatibilité)"
}

output "public_route_table_id" {
  value       = module.vpc.public_route_table_id
  description = "ID de la table de routage publique"
}

output "private_route_table_id" {
  value       = module.vpc.private_route_table_id
  description = "ID de la table de routage privée"
}

// VPC Endpoint outputs
output "ecr_api_endpoint_id" {
  value       = aws_vpc_endpoint.ecr_api.id
  description = "ID du VPC Endpoint pour l'API ECR"
}

output "ecr_dkr_endpoint_id" {
  value       = aws_vpc_endpoint.ecr_dkr.id
  description = "ID du VPC Endpoint pour Docker ECR"
}

output "s3_endpoint_id" {
  value       = aws_vpc_endpoint.s3.id
  description = "ID du VPC Endpoint pour S3"
}

output "vpc_endpoints_sg_id" {
  value       = aws_security_group.vpc_endpoints.id
  description = "ID du groupe de sécurité pour les VPC Endpoints"
}
