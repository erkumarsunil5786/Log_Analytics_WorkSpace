terraform {
   backend "azurerm" {
    resource_group_name = "pipelinedata"
    storage_account_name = "stgpipeline2025"
    container_name = "pipelinedata"
    key = "log.terraform.tstate"

    
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f5c092a3-a10b-4952-9791-a66c5de6792b"
}