resource "azurerm_static_site" "default" {
  name                = "hello-world"
  resource_group_name = azurerm_resource_group.hello-world.name
  location            = azurerm_resource_group.hello-world.location
}