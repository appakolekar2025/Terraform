resource "azurerm_resource_group" "RG" {
    for_each = var.rg
  name =each.value.name
  location = each.value.location
  
}
resource "azurerm_storage_account" "storageacc" {
  for_each = var.storage_account
  name =each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  account_tier = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  
}
resource "azurerm_virtual_network" "VNET" {
  for_each = var.vnet
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space = each.value.address_space
  
}
resource "azurerm_subnet" "subnet" {
  for_each = var.subnet
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes = each.value.address_prefixes
  depends_on = [ azurerm_resource_group.RG,azurerm_virtual_network.VNET ]
}
resource "azurerm_linux_virtual_machine" "name" {
  for_each = var.vms
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.location
  size = each.value.size
  os_disk {caching = ""}
  
}