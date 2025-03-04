data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "foxon-consulting-tf-states-${var.env_type}"
    key    = "${var.client}/vpc.tfstate"
    region = "eu-west-1"
  }
}

# Le data source pour security-groups a été supprimé, car les security groups sont maintenant définis localement
