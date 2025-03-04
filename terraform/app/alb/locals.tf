locals {
  ############################################
  #                 GENERAL                  #
  ############################################

  full_name = "${var.client}-${var.app}-${var.environment}"

  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  alb_sg_id = aws_security_group.alb.id

  subnets_ids = [data.terraform_remote_state.vpc.outputs.public_subnet_id, data.terraform_remote_state.vpc.outputs.public_secondary_subnet_id]

  tags = merge({
    Name        = local.full_name
    client      = var.client
    env_type    = var.env_type
    app         = var.app
    environment = var.environment
  }, var.tags)
}
