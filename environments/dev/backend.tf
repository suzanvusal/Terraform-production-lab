terraform {
  backend "s3" {
    bucket         = "personal-terraform-states-example"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

