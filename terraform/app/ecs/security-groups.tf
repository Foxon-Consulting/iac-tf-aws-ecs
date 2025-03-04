# Security group pour les tâches ECS
resource "aws_security_group" "ecs_tasks" {
  name        = "${var.app}-${var.environment}-ecs-tasks-sg"
  description = "Security group pour les taches ECS"
  vpc_id      = local.vpc_id

  # Autoriser le trafic entrant depuis l'ALB sur le port du conteneur
  ingress {
    from_port       = var.container_port
    to_port         = var.container_port
    protocol        = "tcp"
    security_groups = [data.terraform_remote_state.alb.outputs.alb_security_group_id]
    description     = "Trafic depuis ALB vers le port du conteneur"
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
    Name = "${local.full_name}-ecs-tasks-sg"
  })
}
