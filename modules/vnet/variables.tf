variable "vnet_name" {
  type        = string
  description = "The name of the virtual network. Changing this forces a new resource to be created."
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet. Changing this forces a new resource to be created."
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used the virtual network. You can supply more than one address space but for our module implementation we are limiting it to 1 address space only."
  default     = ["10.1.0.0/16"]
  validation {
    condition     = length(var.address_space) == 1
    error_message = "Only a single address space can be set. Please check your subnet address prefixes."
  }
}

variable "subnet_address_prefix" {
  type        = list(string)
  description = "The address prefixes to use for the subnet. Currently only a single address prefix can be set as the Multiple Subnet Address Prefixes Feature is not yet in public preview or general availability."
  default     = ["10.1.0.0/16"]
  validation {
    condition     = length(var.subnet_address_prefix) == 1
    error_message = "Only a single address prefix can be set. Please check your subnet address prefixes."
  }
}



variable "tags" {
  type        = map(any)
  description = "common tags to be assigned to all the resources"
  default     = {}
}

variable "additional_vnet_tags" {
  type        = map(any)
  description = "additional tags for vnet"
  default     = {}
}