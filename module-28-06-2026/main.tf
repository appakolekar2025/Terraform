module "rg_module" {
  source      = "./module/resource_group"
  rg_name     = var.rg_name1
  rg_location = var.rg_location1

}

module "sa_module" {
  source      = "./module/storage_account"
  sa_name     = var.sa_name
  rg_name     = var.rg_name1
  rg_location = var.rg_location1

}