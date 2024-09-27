module "resource_group" {
  source = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location = var.location
}

module "vnet"{
    source= "./modules/vnet"
    vnet_name = var.vnet_name
    address_space = [var.address_space]
    subnet_name = var.subnet_name
    location = module.resource_group.resource_location
    resource_group_name = module.resource_group.resource_group_name
    
}