variable "azure_region" {
  type = string
  description = "Name of the Azure region where everything will be created. Ex: eastus, eastus2, etc"
}

variable "resource_group_name" {
  type = string
  description = "Resource group name where this container registry will get created. Ex: my-resource-group, test-rg, etc"
}

variable "acr_name" {
  type = string
  description = "Name of the container registry that will be created. Ex: test-acr, etc"
}
