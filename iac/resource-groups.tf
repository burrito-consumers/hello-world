# Create a resource group
resource "azurerm_resource_group" "hello-world" {
  name     = "hello-world-three"
  location = "East US 2"
}
