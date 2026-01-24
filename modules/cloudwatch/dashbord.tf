resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "${var.project}-${var.environment}-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type = "metric"
        x = 0
        y = 0
        width = 12
        height = 6
        properties = {
          metrics = [
            [ "AWS/ApplicationELB", "RequestCount", "LoadBalancer", "${var.project}-${var.environment}-alb" ]
          ]
          period = 300
          stat = "Sum"
          region = "us-east-1"
          title = "ALB Request Count"
        }
      }
    ]
  })
}
