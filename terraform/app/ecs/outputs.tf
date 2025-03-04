# Add outputs here

# output "my_output" {
#   value = "my_output_value"
# }

# Security Group Outputs
output "ecs_tasks_security_group_id" {
  description = "ID du groupe de sécurité pour les tâches ECS"
  value       = aws_security_group.ecs_tasks.id
}

output "ecs_tasks_security_group_name" {
  description = "Nom du groupe de sécurité pour les tâches ECS"
  value       = aws_security_group.ecs_tasks.name
}
