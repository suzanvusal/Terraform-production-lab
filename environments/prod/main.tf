module "vpc" {
  source      = "../../modules/vpc"
  project     = "personal-cloud"
  environment = "prod"
  cidr_block  = "10.0.0.0/16"
}

module "budget" {
  source = "../../modules/budget"

  project        = local.project
  environment    = local.environment
  monthly_limit  = "50"
  alert_emails   = ["your.email@example.com"]
}
