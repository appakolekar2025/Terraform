resource "azurerm_resource_group" "RG" {
  for_each = toset(var.resource_groups)
  name     = each.value
  location = "centralindia"

}