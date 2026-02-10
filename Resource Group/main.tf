resource "azurerm_resource_group" "rg_mahasangram" {
  for_each = var.resource_groups
  name     = each.value.name
  location = each.value.location
  tags     = each.value.tags
}
