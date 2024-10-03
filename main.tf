resource "azurerm_resource_group" "example1" {
  name     = "rg-test-${var.env_name}-01"
  location = var.location
}

resource "azurerm_resource_group" "example2" {
  name     = "rg-test-${var.env_name}-02"
  location = var.location
}