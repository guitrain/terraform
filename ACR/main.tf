provider "azurerm" {
    version = "2.13.0"
    features {}
}
##comment
terraform {
    backend "azurerm" {
        resource_group_name = "tfstate"
        storage_account_name = "gfaccount"
        containter_name = "gftfcontainer.tfstate"
    }

}

data "azurerm_client_config" "current" {}


resource "azurerm_resource_group" "rg" {
  name     = "azurerm_container_registry"
  location = "Central US"
}

resource "azurerm_container_registry" "acr" {
  name                     = "containerRegistry1"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  sku                      = "Basic"
  admin_enabled            = false
}
