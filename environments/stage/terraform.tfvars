# =========================
# Production environment
# =========================

# Project metadata
project     = "personal-cloud"
environment = "prod"

# AWS settings
region = "ca-central-1"

# EC2 / ASG sizing (PROD SCALE)
instance_type    = "t3.small"

min_size         = 1
max_size         = 2
desired_capacity = 1

# AMI (Amazon Linux 2 – replace if needed)
ami_id = "ami-0a3c3a20c09d6f377"

# Networking
allowed_ssh_cidr = ["YOUR_PUBLIC_IP/32"]

# Logging
log_group_name = "/personal-cloud/prod/app"
