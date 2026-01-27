variable "project" {}
variable "environment" {}

variable "monthly_limit" {
  description = "Monthly AWS spend limit in USD"
  type        = string
}

variable "alert_emails" {
  description = "Emails to notify when budget thresholds are crossed"
  type        = list(string)
}
