locals {
  ############################################
  #                 GENERAL                  #
  ############################################

  full_name = "${var.client}-${var.app}-${var.environment}"

  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  alb_sg_id = data.terraform_remote_state.security_groups.outputs.alb_security_group_id

  subnets_ids = [data.terraform_remote_state.vpc.outputs.private_subnet_id, data.terraform_remote_state.vpc.outputs.private_subnet_rds_id]

  target_group_arn = data.terraform_remote_state.alb.outputs.target_group_arn


  tags = merge(var.tags,
    {
      Name        = local.full_name
      client      = var.client,
      env_type    = var.env_type,
      app         = var.app,
      environment = var.environment
    }
  )
}
