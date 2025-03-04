# VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = var.tags
}

# SOUS-RÉSEAUX
# Sous-réseau public (pour ALB, NAT Gateway)
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = var.tags
}

# Sous-réseau public secondaire (dans une autre AZ)
resource "aws_subnet" "public_secondary" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_secondary_subnet_cidr
  availability_zone       = var.availability_zone_secondary
  map_public_ip_on_launch = true

  tags = var.tags
}

# Sous-réseau privé (pour ECS)
resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false

  tags = var.tags
}

# Sous-réseau privé secondaire (dans une autre AZ)
resource "aws_subnet" "private_secondary" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_secondary_subnet_cidr
  availability_zone       = var.availability_zone_secondary
  map_public_ip_on_launch = false

  tags = var.tags
}

# PASSERELLES ET ROUTAGE
# Internet Gateway
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = var.tags
}

# Table de routage pour le sous-réseau public
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = var.tags
}

# Association de la table de routage avec le sous-réseau public
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

# Association de la table de routage avec le sous-réseau public secondaire
resource "aws_route_table_association" "public_secondary" {
  subnet_id      = aws_subnet.public_secondary.id
  route_table_id = aws_route_table.public.id
}

# Elastic IP pour NAT Gateway
resource "aws_eip" "nat" {
  domain = "vpc"

  tags = var.tags
}

# NAT Gateway
resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id

  tags = var.tags

  depends_on = [aws_internet_gateway.main]
}

# Table de routage pour les sous-réseaux privés
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main.id
  }

  tags = var.tags
}

# Association de la table de routage avec les sous-réseaux privés
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_secondary" {
  subnet_id      = aws_subnet.private_secondary.id
  route_table_id = aws_route_table.private.id
}
