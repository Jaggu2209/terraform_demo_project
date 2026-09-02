variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "cidr_block" {
  description = "IPv4 CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_support" {
  description = "Whether DNS resolution is supported in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Whether instances receive public DNS hostnames"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags to apply to the VPC"
  type        = map(string)
  default     = {}
}

variable "region" {
  description = "The AWS region where the VPC will be created"
  type        = string
}