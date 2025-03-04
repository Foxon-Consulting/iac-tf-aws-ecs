# Security group pour l'ALB
resource "aws_security_group" "alb" {
  name        = "${var.app}-${var.environment}-alb-sg"
  description = "Security group pour Application Load Balancer"
  vpc_id      = local.vpc_id

  # Autoriser HTTP depuis internet
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Acces HTTP depuis Internet"
  }

  # Autoriser HTTPS depuis internet
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Acces HTTPS depuis Internet"
  }

  # Autoriser tout le trafic sortant
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Tout le trafic sortant"
  }

  tags = merge(local.tags, {
    Name = "${local.full_name}-alb-sg"
  })
}
