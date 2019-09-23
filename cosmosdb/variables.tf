variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
}

variable "azurerm_resource_group" {
  description = "The Azure RG deployment"
}

variable "azurerm_cosmosdb_account" {
  description = "CosmosDB Account Name"
}
