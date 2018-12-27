provider "azurerm" {
    version = "~>1.8"
}

terraform {
    backend "azurerm" {}
}