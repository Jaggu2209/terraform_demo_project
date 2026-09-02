variable "region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "ap-south-2"
}
variable "access_key" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = ""
}
variable "secret_key" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Additional tags to apply to the resources"
  type        = map(string)
  default     = {}
}