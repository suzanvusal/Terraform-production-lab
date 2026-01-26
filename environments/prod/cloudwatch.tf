module "cloudwatch" {
  source = "../../modules/cloudwatch"

  project     = "personal-cloud"
  environment = "dev"
}
