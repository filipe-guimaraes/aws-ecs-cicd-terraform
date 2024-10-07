# ---------------------------------------------------------------------------------------------------------------------
# AWS PROVIDER FOR TF CLOUD
# ---------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = "~>0.12"
}

provider "aws" {
  version = "~> 5.0"
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      Environment = terraform.workspace
    }
  }
}
