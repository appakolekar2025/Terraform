resource "azurerm_subnet" "subnet" {
    for_each = var.subnets
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes = each.value.address_prefix
  
  
}
resource "azurerm_subnet" "bastion" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = "vikas1"
  virtual_network_name = "vnet1"
  address_prefixes = ["10.0.10.0/26"]
}