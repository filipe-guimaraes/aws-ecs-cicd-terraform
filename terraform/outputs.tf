output "image_repo_url" {
  value = aws_ecr_repository.image_repo.repository_url
}

output "image_repo_arn" {
  value = aws_ecr_repository.image_repo.arn
}

output "db_host" {
  value = aws_db_instance.db.address
}

output "db_port" {
  value = aws_db_instance.db.port
}

output "db_url" {
  value = "jdbc:mysql://${aws_db_instance.db.address}/${var.db_name}"
}

output "alb_address" {
  value = aws_alb.alb.dns_name
}