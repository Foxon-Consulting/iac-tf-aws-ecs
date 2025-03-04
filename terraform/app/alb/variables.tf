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


### ALB Configuration

variable "target_group_port" {
  description = "Port for the target group"
  type        = number
  default     = 80
}

variable "health_check_path" {
  description = "Path for the health check"
  type        = string
  default     = "/"
}

variable "certificate_arn" {
  description = "ARN of the SSL certificate"
  type        = string
  default     = null
}

variable "ssl_policy" {
  description = "SSL policy for the ALB"
  type        = string
  default     = "ELBSecurityPolicy-2016-08"
}
