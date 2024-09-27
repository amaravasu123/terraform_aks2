variable "vnet_name" {
  description = "The name of the Virtual Network"
  type = string
}

variable "address_space" {
  description = "The address space for the Virtual Network"
  type = string
}

variable "subnet_name" {
  description = "The name of the Subnet"
  type = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group"
  type = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type = string
}
