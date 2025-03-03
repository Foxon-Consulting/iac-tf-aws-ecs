client = "mane"
app = "ecs-n8n"
env_type = "npe"
environment = "dev"

# ECS Configuration
service_name = "n8n-service"
container_image = "039130791457.dkr.ecr.eu-west-1.amazonaws.com/n8n"
ecr_image_arn = "arn:aws:ecr:eu-west-1:039130791457:repository/n8n"
container_port = 5678
cpu = 256
memory = 512
desired_count = 1
assign_public_ip = false

# Environment Variables
environment_variables = [
  {
    name = "N8N_HOST"
    value = "0.0.0.0"
  },
  {
    name = "N8N_PORT"
    value = "5678"
  },
  {
    name = "N8N_PROTOCOL"
    value = "http"
  },
  {
    name = "N8N_BASIC_AUTH_ACTIVE"
    value = "true"
  },
  {
    name = "N8N_BASIC_AUTH_USER"
    value = "admin"
  },
  {
    name = "N8N_BASIC_AUTH_PASSWORD"
    value = "changeme"
  }
]

# Add layer variables configuration
# myvar = "myvalue"
