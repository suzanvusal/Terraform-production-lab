module "ec2" {
  source = "../../modules/ec2"

  project            = "personal-cloud"
  environment        = "dev"
  vpc_id             = module.vpc.vpc_id
  ami_id             = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
  allowed_ssh_cidr   = ["0.0.0.0/0"]
  instance_profile_name = module.iam.instance_profile_name

}
