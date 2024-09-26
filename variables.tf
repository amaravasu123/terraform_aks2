variable "resource_group_name" {
  description = "The name of the Resource Group"
  type = string
}

variable "region" {
  description = "The Azure region to deploy resources"
  type = string
}

variable "tags" {
  type        = map(any)
  description = "common tags to be assigned to all the resources"
  default     = {}
}