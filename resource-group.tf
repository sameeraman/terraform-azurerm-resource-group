resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
  tags     = merge(var.tags, { CreatedOn = timestamp() })

  lifecycle {
    ignore_changes = [
      tags["CreatedOn"],
      ]
  }
}
