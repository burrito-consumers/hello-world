# Create a resource group
resource "azurerm_resource_group" "hello-world" {
  name     = "hello-world-three"
  location = "East US 2"
}

resource "azurerm_resource_group" "hello-world-four" {
  name     = "hello-world-four"
  location = "East US 2"
}

resource "azurerm_resource_group" "hello-world-five" {
  name     = "hello-world-five"
  location = "East US 2"
}

resource "azurerm_dns_zone" "example-public" {
  name                = "sjlnet.com"
  resource_group_name = azurerm_resource_group.hello-world-five.name
}