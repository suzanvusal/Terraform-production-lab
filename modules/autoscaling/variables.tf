variable "project" {}
variable "environment" {}

variable "launch_template_id" {}
variable "subnet_ids" {
  type = list(string)
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 2
}

variable "desired_capacity" {
  default = 1
}
variable "target_group_arns" {
  type = list(string)
}
