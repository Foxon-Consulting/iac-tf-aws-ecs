variable "client" {
  description = "Nom du client"
  type        = string
}

variable "env_type" {
  description = "Type d'environnement. npe (Non Production Environment) ou prd (Production Environment)"
  type        = string

  validation {
    condition     = can(regex("^(npe|prd)$", var.env_type))
    error_message = "Les valeurs valides pour env_type sont 'npe' ou 'prd'"
  }

  default = "npe"
}

variable "tags" {
  description = "Tags à appliquer à toutes les ressources"
  type        = map(string)
  default     = {}
}

variable "region" {
  description = "Région AWS où déployer les ressources"
  type        = string
  default     = "eu-west-1"
}
