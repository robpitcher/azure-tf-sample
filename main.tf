# resource "azurerm_resource_group" "example" {
#   name     = var.resource_group_name
#   location = var.location
# }

resource "azurerm_resource_group" "example2" {
  name     = "rg-test-${var.env_name}-01"
  location = var.location
}

#