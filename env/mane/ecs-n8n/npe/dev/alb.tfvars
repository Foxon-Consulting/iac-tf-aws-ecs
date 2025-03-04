client = "mane"
app = "ecs-n8n"
env_type = "npe"
environment = "dev"


# ALB Configuration
target_group_port = 5678
health_check_path = "/healthz"
ssl_policy = "ELBSecurityPolicy-2016-08"

# SSL Certificate (optional)
# certificate_arn = "arn:aws:acm:region:account:certificate/certificate-id"
