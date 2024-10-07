# ---------------------------------------------------------------------------------------------------------------------
# ECR
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_ecr_repository" "image_repo" {
  name                 = "${var.image_repo_name}-${terraform.workspace}"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}
