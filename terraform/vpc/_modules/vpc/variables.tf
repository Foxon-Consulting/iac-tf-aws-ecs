variable "vpc_cidr" {
  description = "CIDR block pour le VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block pour le sous-réseau public"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_secondary_subnet_cidr" {
  description = "CIDR block pour le sous-réseau public secondaire"
  type        = string
  default     = "10.0.4.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block pour le sous-réseau privé"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_secondary_subnet_cidr" {
  description = "CIDR block pour le sous-réseau privé secondaire"
  type        = string
  default     = "10.0.3.0/24"
}

variable "availability_zone" {
  description = "Zone de disponibilité principale"
  type        = string
  default     = "eu-west-1a"
}

variable "availability_zone_secondary" {
  description = "Zone de disponibilité secondaire (doit être différente de la principale)"
  type        = string
  default     = "eu-west-1b"
}

variable "tags" {
  description = "Tags à appliquer aux ressources"
  type        = map(string)
  default     = {}
}
