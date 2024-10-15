# ---------------------------------------------------------------------------------------------------------------------
# AWS PROVIDER FOR TF CLOUD
# ---------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = "~>0.13.4"

  backend "s3" {
    bucket = "tf-petclinic"
    key    = "petclinic/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  version = "~> 5.0"
  region  = var.aws_region

  default_tags {
    tags = {
      Environment = terraform.workspace
    }
  }
}