resource "azurerm_dns_zone" "dns_zone" {
for_each=var.dns-zones
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.rg[each.key].name
}
