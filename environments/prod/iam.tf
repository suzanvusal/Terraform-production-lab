module "iam" {
  source = "../../modules/iam"

  project     = "personal-cloud"
  environment = "dev"
}
