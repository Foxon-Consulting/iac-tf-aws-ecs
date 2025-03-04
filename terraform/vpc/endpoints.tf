# Security group pour les VPC Endpoints
resource "aws_security_group" "vpc_endpoints" {
  name        = "${var.client}-vpc-endpoints-sg"
  description = "Security group pour les VPC Endpoints"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [module.vpc.vpc_cidr]
    description = "Acces HTTPS depuis le VPC"
  }

  tags = local.tags
}

# VPC Endpoint pour ECR API
resource "aws_vpc_endpoint" "ecr_api" {
  vpc_id            = module.vpc.vpc_id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.ecr.api"
  vpc_endpoint_type = "Interface"

  subnet_ids = [module.vpc.private_subnet_id, module.vpc.private_secondary_subnet_id]
  security_group_ids = [aws_security_group.vpc_endpoints.id]

  private_dns_enabled = true

  tags = local.tags
}

# VPC Endpoint pour ECR DKR
resource "aws_vpc_endpoint" "ecr_dkr" {
  vpc_id            = module.vpc.vpc_id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.ecr.dkr"
  vpc_endpoint_type = "Interface"

  subnet_ids = [module.vpc.private_subnet_id, module.vpc.private_secondary_subnet_id]
  security_group_ids = [aws_security_group.vpc_endpoints.id]

  private_dns_enabled = true

  tags = local.tags
}

# VPC Endpoint pour Amazon S3 (utilisé par ECR pour les couches d'images)
resource "aws_vpc_endpoint" "s3" {
  vpc_id            = module.vpc.vpc_id
  service_name      = "com.amazonaws.${data.aws_region.current.name}.s3"
  vpc_endpoint_type = "Gateway"

  route_table_ids = [module.vpc.private_route_table_id]

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowECRAccess"
        Effect = "Allow"
        Principal = "*"
        Action = [
          "s3:GetBucketLocation",
          "s3:ListBucket",
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject"
        ]
        Resource = [
          "arn:aws:s3:::prod-${data.aws_region.current.name}-starport-layer-bucket",
          "arn:aws:s3:::prod-${data.aws_region.current.name}-starport-layer-bucket/*"
        ]
      }
    ]
  })

  tags = local.tags
}

# Data source pour la région courante
data "aws_region" "current" {}
