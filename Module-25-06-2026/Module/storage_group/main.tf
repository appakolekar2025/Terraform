resource "azurerm_storage_account" "stgacc" {
  name = "storageacc2325637"
  location = var.rg_location
  resource_group_name = var.rg_name
  account_tier = "Standard"
  account_replication_type = "LRS"
  
}