resource "azurerm_cdn_profile" "cdn" {
  name                = "cdn"
  location            = azurerm_resource_group.hello-world.location
  resource_group_name = azurerm_resource_group.hello-world.name
  sku                 = "Standard_Verizon"
}

resource "azurerm_cdn_endpoint" "hello-world" {
  name                = "hello-world-two"
  profile_name        = azurerm_cdn_profile.cdn.name
  location            = azurerm_resource_group.hello-world.location
  resource_group_name = azurerm_resource_group.hello-world.name

  origin {
    name      = "hello-world-two"
    host_name = "hello-world.spanglab.com"
  }
}