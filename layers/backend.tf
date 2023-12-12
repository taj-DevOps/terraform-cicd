terraform {
  backend "azurerm" {
    resource_group_name  = "devops-rg"
    storage_account_name = "devopsprodstore2023"
    container_name       = "devopsprodcontainer"
    key                  = "sonata/prod.terraform.tfstate"
  }
}
