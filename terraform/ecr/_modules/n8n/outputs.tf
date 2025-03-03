output "repository_url" {
  description = "The URL of the repository"
  value       = aws_ecr_repository.n8n.repository_url
}

output "repository_name" {
  description = "The name of the repository"
  value       = aws_ecr_repository.n8n.name
}

output "repository_arn" {
  description = "The ARN of the repository"
  value       = aws_ecr_repository.n8n.arn
}
