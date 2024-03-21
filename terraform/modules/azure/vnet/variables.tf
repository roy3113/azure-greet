variable "name_prefix" {
  type = string
  description = "a string that will be used as a prefix for every resource that gets created. Ex: test, my-example, abcd, etc"
}

variable "resource_group_name" {
  type = string
}

variable "azure_region" {
  type = string
  description = "Name of the Azure region where everything will be created. Ex: eastus, eastus2, etc"
}

variable "vnet_address_prefix" {
  type = string
  description = "first two bits of a /16 private network. Ex: '10.0', '10.10', '172.16', etc."
}
