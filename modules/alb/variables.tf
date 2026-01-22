variable "project" {}
variable "environment" {}

variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}
