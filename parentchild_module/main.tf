module "resource_group" {

  source = "./module/resource_group"

  resource_groups = var.resource_groups
}