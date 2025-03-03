data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "foxon-consulting-tf-states-${var.env_type}"
    key    = "${var.client}/vpc.tfstate"
    region = "eu-west-1"
  }
}
