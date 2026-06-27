module "rg-module" {
    source = "./Module/resource_group"
    rg_name = var.rg_name1
    rg_location = var.rg_location1
  
}
module "sa_module" {
    source = "./Module/storage_group"
    sa_name = var.sa_name
    rg_name = module.rg-module.rg_name
    rg_location = module.rg-module.rg_location
  
}
