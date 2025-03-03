// aws provider definition in provider.tf
provider "aws" {
  region                   = "eu-west-1"
  shared_credentials_files = ["/root/.aws/credentials"]
}

terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
}
