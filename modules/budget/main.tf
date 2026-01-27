resource "aws_budgets_budget" "monthly" {
  name              = "${var.project}-${var.environment}-monthly-budget"
  budget_type       = "COST"
  limit_amount      = var.monthly_limit
  limit_unit        = "USD"
  time_unit         = "MONTHLY"

  cost_filters = {
    TagKeyValue = "user:Environment$${var.environment}"
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 80
    threshold_type             = "PERCENTAGE"
    notification_type          = "ACTUAL"

    subscriber_email_addresses = var.alert_emails
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 100
    threshold_type             = "PERCENTAGE"
    notification_type          = "ACTUAL"

    subscriber_email_addresses = var.alert_emails
  }
}
