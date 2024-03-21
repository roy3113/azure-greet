module "azure_vnet" {
  source = "../../modules/azure/acr"

  resource_group_name = "ShubhamRoy"
  azure_region = "centralindia"
  acr_name = "greetacr"
}
