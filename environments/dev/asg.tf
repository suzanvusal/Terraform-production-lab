module "autoscaling" {
  source = "../../modules/autoscaling"

  project            = "personal-cloud"
  environment        = "dev"
  launch_template_id = module.ec2.launch_template_id
  subnet_ids         = module.vpc.public_subnets

  min_size           = 1
  max_size           = 2
  desired_capacity   = 1
}
