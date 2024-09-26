module "resourcegroup" {
  source = "./modules/resourcegroup"
  resource_group_name = var.resourcegroup
  location= var.region
  
}