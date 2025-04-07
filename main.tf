/*
 * # wanted-cloud/terraform-azure-managed-identity
 * 
 * Azure user managed identity Terraform building block module.
 */

resource "azurerm_user_assigned_identity" "this" {
  location            = var.location != "" ? var.location : data.azurerm_resource_group.this.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  tags = merge(local.metadata.tags, var.tags)

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azurerm_user_assigned_identity"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azurerm_user_assigned_identity"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azurerm_user_assigned_identity"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azurerm_user_assigned_identity"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}