# Resource Group
# resource "azurerm_resource_group" "rg" {
#   name = "${var.name_prefix}-rg"
#   location = var.azure_region
# }

# Virtual Network
resource "azurerm_virtual_network" "my_terraform_network" {
  name                = "${var.name_prefix}-vnet"
  address_space       = ["${var.vnet_address_prefix}.0.0/16"]
  location            = var.azure_region
  resource_group_name = var.resource_group_name
}

# Subnet 1
resource "azurerm_subnet" "my_terraform_subnet_1" {
  name                 = "${var.name_prefix}-subnet-web"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.my_terraform_network.name
  address_prefixes     = ["10.0.0.0/20"]

  depends_on = [azurerm_virtual_network.my_terraform_network]
}

# Subnet 2
resource "azurerm_subnet" "my_terraform_subnet_2" {
  name                 = "${var.name_prefix}-subnet-backend"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.my_terraform_network.name
  address_prefixes     = ["10.0.16.0/20"]

  depends_on = [azurerm_subnet.my_terraform_subnet_1]
}
