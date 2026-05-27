#hardcoded way

resource "azurerm_resource_group" "hardcoded_rg" {
  name="hardcoded_rg"
  location = "centralindia"
}

#variable way
variable "rg-name" {}
variable "rg-location" {}

resource "azurerm_resource_group" "string_variable_rg" {
name = var.rg-name
location = var.rg-location
  
}

#forEach+list way

variable "rg-names" {}
resource "azurerm_resource_group" "ForEachlist" {
for_each = toset(var.rg-names)
  name = "each.value"
  location = "centralindia"
  
}
