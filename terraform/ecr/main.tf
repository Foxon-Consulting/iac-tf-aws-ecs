# Modules declared in this files must have source from github or terraform registry
# To work with local modules instead, use the _override.tf file and uncomment it in the .gitignore file

# Add Resources to create here

module "n8n" {
  source = "./_modules/n8n"

  repository_name = var.repository_name
  max_image_count = 30
  tags = local.tags
}
