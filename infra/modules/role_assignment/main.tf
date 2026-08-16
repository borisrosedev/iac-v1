
resource "azurerm_role_assignment" "this" {
  scope                = var.azurerm_subscription_primary_id
  role_definition_name = "Reader"
  principal_id         = var.azurerm_client_config_object_id
}
