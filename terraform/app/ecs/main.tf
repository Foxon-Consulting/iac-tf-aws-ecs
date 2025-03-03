# Modules declared in this files must have source from github or terraform registry
# To work with local modules instead, use the _override.tf file and uncomment it in the .gitignore file

# Add Resources to create here

module "service" {
  source = "./_modules/service"

  service_name = var.service_name
  container_image = var.container_image
  ecr_image_arn = var.ecr_image_arn
  container_port = var.container_port
  cpu = var.cpu
  memory = var.memory
  desired_count = var.desired_count
  environment_variables = var.environment_variables
  vpc_id = local.vpc_id
  subnet_ids = local.subnets_ids
  target_group_arn = local.target_group_arn
  alb_security_group_id = local.alb_sg_id
  assign_public_ip = var.assign_public_ip
  tags = local.tags
}
