terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }
}

provider "azurerm" {
  features {}
  # use_msi = true
}
