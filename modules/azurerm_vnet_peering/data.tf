data "azurerm_virtual_network" "remote" {

  for_each = var.peerings

  name                = each.value.remote_vnet_name
  resource_group_name = each.value.resource_group_name
}