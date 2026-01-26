terraform {
  backend "s3" {
    bucket         = "personal-terraform-states-example"
    key            = "stage/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

