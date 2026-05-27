#hardcoded resource group

resource "azurerm_resource_group" "rg" {
  name     = "appa"
  location = "West Europe"
}
