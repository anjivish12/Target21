terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "backend-anjali"
    storage_account_name = "stg123anji"
    container_name = "con-anjali"
    key = "dev.tfstate"
  }

}

provider "azurerm" {
  # Configuration options
  features {
    
  }
  subscription_id = "95a90f4b-7e15-47ba-95ab-0d52bac078e4"
}