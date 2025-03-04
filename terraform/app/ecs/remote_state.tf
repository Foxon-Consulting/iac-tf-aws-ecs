data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "foxon-consulting-tf-states-${var.env_type}"
    key    = "${var.client}/vpc.tfstate"
    region = "eu-west-1"
  }
}

# La référence à la couche security-groups a été supprimée,
# car les security groups sont maintenant définis localement dans ce layer

data "terraform_remote_state" "alb" {
  backend = "s3"
  config = {
    bucket = "foxon-consulting-tf-states-${var.env_type}"
    key    = "${var.client}/${var.app}/${var.env_type}/${var.environment}/alb.tfstate"
    region = "eu-west-1"
  }
}
