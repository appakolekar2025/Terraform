terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
 
    }
    backend "azurerm" {
      resource_group_name = "myrg"
      storage_account_name = "statebanana123"
      container_name = "tf-state"
      key = "prod-terraform-statekey"
      
    }
 
}



provider "azurerm" {
  features {

  }

}
resource "azurerm_resource_group" "RG" {
  name     = "myrg"
  location = "central india"

}
resource "azurerm_storage_account" "storage" {
  name                     = "statebanana123"
  resource_group_name      = "myrg"
  location                 = "central india"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on               = [azurerm_resource_group.RG]
}
resource "azurerm_storage_container" "container" {
  name                  = "tf-state"
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "private"
}