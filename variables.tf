variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "ap-southeast-2"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for VPC"
}

variable "resource_identifier" {
  type        = string
  description = "resource_identifier"
  default     = "default"
}

variable "public_subnets" {
  type = list
  description = "List of CIDR blocks assigned to public subnets"
}

variable "availability_zone_cont" {
  type = number
  description = "Number of availability zone to setup"
  default = 1
}
