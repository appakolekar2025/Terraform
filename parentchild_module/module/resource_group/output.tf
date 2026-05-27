output "rg_names" {

  value = {
    for k, v in azurerm_resource_group.rg :
    k => v.name
  }
}

output "rg_locations" {

  value = {
    for k, v in azurerm_resource_group.rg :
    k => v.location
  }
}