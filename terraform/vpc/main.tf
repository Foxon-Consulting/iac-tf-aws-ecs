module "vpc" {
  # source = "github.com/Foxon-Consulting/tf-module-aws-vpc.git?ref=refactor/tags"
  source = "github.com/Foxon-Consulting/tf-module-aws-vpc.git?ref=main"

  client   = var.client
  env_type = var.env_type
  tags     = local.tags
}
