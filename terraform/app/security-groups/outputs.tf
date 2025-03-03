output "alb_security_group_id" {
  description = "ID of the ALB security group"
  value       = aws_security_group.alb.id
}

output "alb_security_group_name" {
  description = "Name of the ALB security group"
  value       = aws_security_group.alb.name
}

output "ecs_tasks_security_group_id" {
  description = "ID of the ECS tasks security group"
  value       = aws_security_group.ecs_tasks.id
}

output "ecs_tasks_security_group_name" {
  description = "Name of the ECS tasks security group"
  value       = aws_security_group.ecs_tasks.name
}

output "rds_security_group_id" {
  description = "ID of the RDS security group"
  value       = var.create_rds_sg ? aws_security_group.rds[0].id : null
}

output "rds_security_group_name" {
  description = "Name of the RDS security group"
  value       = var.create_rds_sg ? aws_security_group.rds[0].name : null
}

output "redis_security_group_id" {
  description = "ID of the Redis security group"
  value       = var.create_redis_sg ? aws_security_group.redis[0].id : null
}

output "redis_security_group_name" {
  description = "Name of the Redis security group"
  value       = var.create_redis_sg ? aws_security_group.redis[0].name : null
}
