module "azure_vnet" {
  source = "../../modules/azure/vnet"

  name_prefix = "greet"
  resource_group_name = "ShubhamRoy"
  azure_region = "centralindia"
  vnet_address_prefix = "10.0"
}
