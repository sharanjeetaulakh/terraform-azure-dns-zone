data "azurerm_resource_group" "rg" {
  for_each=var.dns-zones
  name =each.value.resource_group_name
}
