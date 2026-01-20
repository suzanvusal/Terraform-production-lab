variable "project" {}
variable "environment" {}
variable "vpc_id" {}
variable "ami_id" {}
variable "instance_type" {
  default = "t3.micro"
}
variable "allowed_ssh_cidr" {
  type = list(string)
}