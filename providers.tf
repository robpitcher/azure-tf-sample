terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }

  # Update this block with the location of your terraform state file
  # backend "azurerm" {
  #   resource_group_name  = "rg-tf-samples"
  #   storage_account_name = "fdsafewafg34"
  #   container_name       = "tfstates"
  #   key                  = "sample.tfstate"
  #   use_oidc             = true
  # }
  backend "azurerm" {
    use_oidc = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}