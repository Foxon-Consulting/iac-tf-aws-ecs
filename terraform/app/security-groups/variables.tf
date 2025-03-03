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

variable "container_port" {
  description = "Port exposed by the container"
  type        = number
}

variable "create_rds_sg" {
  description = "Whether to create RDS security group"
  type        = bool
  default     = false
}

variable "create_redis_sg" {
  description = "Whether to create Redis security group"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}
