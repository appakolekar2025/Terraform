variable "resource_groups" {}

resource "azurerm_resource_group" "RG" {
  for_each = var.resource_groups
  name     = each.key
  location = each.value

}