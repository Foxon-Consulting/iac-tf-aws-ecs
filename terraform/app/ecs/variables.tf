variable "client" {
  description = "The client name"
  type        = string
}

variable "app" {
  description = "The app name"
  type        = string
}


variable "env_type" {
  description = "Environment type. npe (Non Production Environment) or prd (Production Environment)"
  type        = string

  validation {
    condition     = can(regex("^(npe|prd)$", var.env_type))
    error_message = "Valid values for env_type are 'npe' or 'prd'"
  }

  default = "npe"
}


variable "environment" {
  description = "The environment name"
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}


############################################
#               ecs                  #
############################################

variable "service_name" {
  description = "Name of the ECS service"
  type        = string
}

variable "container_image" {
  description = "Docker image to run in the ECS cluster"
  type        = string
}

variable "ecr_image_arn" {
  description = "ARN of the ECR image"
  type        = string
}

variable "container_port" {
  description = "Port exposed by the container"
  type        = number
}

variable "cpu" {
  description = "CPU units for the task (1024 = 1 vCPU)"
  type        = number
  default     = 256
}

variable "memory" {
  description = "Memory for the task in MB"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Desired number of tasks running in the service"
  type        = number
  default     = 1
}

variable "environment_variables" {
  description = "Environment variables for the container"
  type        = list(map(string))
  default     = []
}

# variable "vpc_id" {
#   description = "VPC ID where the ECS tasks will run"
#   type        = string
# }

# variable "subnet_ids" {
#   description = "Subnet IDs where the ECS tasks will run"
#   type        = list(string)
# }

# variable "target_group_arn" {
#   description = "ARN of the target group for the load balancer"
#   type        = string
# }

# variable "alb_security_group_id" {
#   description = "Security group ID of the Application Load Balancer"
#   type        = string
# }

variable "assign_public_ip" {
  description = "Whether to assign public IP to the tasks"
  type        = bool
  default     = false
}

# Add others variables here
