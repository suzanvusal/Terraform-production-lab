resource "aws_cloudwatch_log_group" "app" {
  name              = "/${var.project}/${var.environment}/app"
  retention_in_days = var.retention_days

  tags = {
    Environment = var.environment
  }
}
