output "external_alb_dns_name" {
  value       = var.create_external_alb ? aws_lb.teamcity_external_lb[0].dns_name : null
  description = "DNS endpoint of Application Load Balancer (ALB)"
}

output "external_alb_zone_id" {
  value       = var.create_external_alb ? aws_lb.teamcity_external_lb[0].zone_id : null
  description = "Zone ID for internet facing load balancer"
}

output "external_alb_name" {
  value       = var.create_external_alb ? aws_lb.teamcity_external_lb[0].name : null
  description = "Name for internet facing load balancer"
}

output "security_group_id" {
  value       = aws_security_group.teamcity_service_sg.id
  description = "The default security group of your Teamcity service."
}

output "teamcity_cluster_id" {
  value       = var.cluster_name != null ? data.aws_ecs_cluster.teamcity_cluster[0].id : aws_ecs_cluster.teamcity_cluster[0].id
  description = "The ID of the ECS cluster"
}

output "teamcity_alb_sg_id" {
  value = aws_security_group.teamcity_alb_sg[0].id
  description = "The security group attached to the TeamCity ALB."
}

output "teamcity_efs_sg_id" {
  value = aws_security_group.teamcity_efs_sg[0].id
  description = "The security group for the TeamCity EFS so that an EC2 instance can mount it."
}

output "teamcity_efs_id" {
  value = aws_efs_file_system.teamcity_efs_file_system[0].id
  description = "The id of the TeamCity EFS."
}

output "teamcity_task_role_arn" {
  value = aws_iam_role.teamcity_default_role.arn
  description = "The ARN of the task for role for TeamCity tasks in ECS. Customize with additional policies."
}

output "teamcity_task_role_name" {
  value = aws_iam_role.teamcity_default_role.name
  description = "The name of the task for role for TeamCity tasks in ECS. Customize with additional policies."
}