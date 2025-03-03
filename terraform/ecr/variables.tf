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
#               ecr                    #
############################################

variable "repository_name" {
  description = "The name of the ECR repository"
  type        = string
}
