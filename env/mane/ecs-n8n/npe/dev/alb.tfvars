client = "mane"
app = "ecs-n8n"
env_type = "npe"
environment = "dev"

# Network Configuration (from VPC remote state)
vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
subnet_ids = [data.terraform_remote_state.vpc.outputs.public_subnet_id]

# ALB Configuration
target_group_port = 5678
health_check_path = "/healthz"
ssl_policy = "ELBSecurityPolicy-2016-08"

# Security Groups (from security-groups layer)
security_group_ids = [module.security_groups.alb_security_group_id]

# SSL Certificate (optional)
# certificate_arn = "arn:aws:acm:region:account:certificate/certificate-id"
