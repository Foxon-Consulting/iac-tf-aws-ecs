variable "client" {
  description = "Name of the client"
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

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}
