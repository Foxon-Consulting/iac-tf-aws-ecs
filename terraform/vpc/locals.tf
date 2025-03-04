locals {
  ############################################
  #                 GENERAL                  #
  ############################################

  full_name = "${var.client}-${var.env_type}"

  tags = merge(var.tags,
    {
      Name        = local.full_name
      client      = var.client,
      env_type    = var.env_type,
      terraform   = "true",
      module      = "vpc"
    }
  )
}
