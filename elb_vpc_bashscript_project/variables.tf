variable "aws_region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  default = "10.30.0.0/20"
}

variable "subnets_cidr" {
  type = list
  default = ["10.30.1.0/24", "10.30.2.0/24"]
}

variable "azs" {
  type = list
  default = ["us-west-2a", "us-west-2b"]
}

variable "webservers_ami" {
  default = "ami-06b8e25e16bdfc661"
}

variable "instance_type" {
  default = "t2.nano"
}