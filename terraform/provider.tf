# ---------------------------------------------------------------------------------------------------------------------
# AWS PROVIDER FOR TF CLOUD
# ---------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = "~>0.12"

  backend "s3" {
    bucket = "tf-petclinic"
    key    = "petclinic/terraform.tfstate"
    region = "us-east-1"
  }
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
