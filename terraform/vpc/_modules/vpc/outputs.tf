output "vpc_id" {
  value       = aws_vpc.main.id
  description = "ID du VPC"
}

output "vpc_arn" {
  value       = aws_vpc.main.arn
  description = "ARN du VPC"
}

output "vpc_cidr" {
  value       = aws_vpc.main.cidr_block
  description = "CIDR block du VPC"
}

output "vpc_enable_dns_hostnames" {
  value       = aws_vpc.main.enable_dns_hostnames
  description = "Est-ce que les DNS hostnames sont activés"
}

output "public_subnet_id" {
  value       = aws_subnet.public.id
  description = "ID du sous-réseau public"
}

output "public_subnet_arn" {
  value       = aws_subnet.public.arn
  description = "ARN du sous-réseau public"
}

output "public_secondary_subnet_id" {
  value       = aws_subnet.public_secondary.id
  description = "ID du sous-réseau public secondaire"
}

output "public_secondary_subnet_arn" {
  value       = aws_subnet.public_secondary.arn
  description = "ARN du sous-réseau public secondaire"
}

output "private_subnet_id" {
  value       = aws_subnet.private.id
  description = "ID du sous-réseau privé"
}

output "private_subnet_arn" {
  value       = aws_subnet.private.arn
  description = "ARN du sous-réseau privé"
}

output "private_secondary_subnet_id" {
  value       = aws_subnet.private_secondary.id
  description = "ID du sous-réseau privé secondaire"
}

output "private_secondary_subnet_arn" {
  value       = aws_subnet.private_secondary.arn
  description = "ARN du sous-réseau privé secondaire"
}

output "availability_zone" {
  value       = var.availability_zone
  description = "Zone de disponibilité principale"
}

output "availability_zone_secondary" {
  value       = var.availability_zone_secondary
  description = "Zone de disponibilité secondaire"
}

output "igw_id" {
  value       = aws_internet_gateway.main.id
  description = "ID de la passerelle Internet"
}

output "igw_arn" {
  value       = aws_internet_gateway.main.arn
  description = "ARN de la passerelle Internet"
}

output "nat_gateway_id" {
  value       = aws_nat_gateway.main.id
  description = "ID de la NAT Gateway"
}

output "public_route_table_id" {
  value       = aws_route_table.public.id
  description = "ID de la table de routage publique"
}

output "private_route_table_id" {
  value       = aws_route_table.private.id
  description = "ID de la table de routage privée"
}

output "rta_id" {
  value       = aws_route_table.public.id
  description = "ID de la table de routage publique (pour compatibilité)"
}

output "rta_arn" {
  value       = aws_route_table.public.arn
  description = "ARN de la table de routage publique (pour compatibilité)"
}
