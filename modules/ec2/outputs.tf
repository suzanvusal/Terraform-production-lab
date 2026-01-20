output "launch_template_id" {
  value = aws_launch_template.this.id
}

output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}