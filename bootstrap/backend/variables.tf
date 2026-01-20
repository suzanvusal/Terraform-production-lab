variable "bucket_name" {
  description = "S3 bucket for Terraform remote state"
}

variable "dynamodb_table" {
  description = "DynamoDB table for state locking"
}