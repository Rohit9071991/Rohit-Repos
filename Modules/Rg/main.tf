resource "azurerm_resource_group" "Rg_block" {
    for_each = var.rg
    name     = each.value.name
    location = each.value.location
}