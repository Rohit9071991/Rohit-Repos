data "azurerm_network_interface" "nic_data" {
    for_each = var.vm
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}