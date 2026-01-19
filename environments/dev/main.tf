module "vpc" {
  source      = "../../modules/vpc"
  project     = "personal-cloud"
  environment = "dev"
  cidr_block  = "10.0.0.0/16"
}