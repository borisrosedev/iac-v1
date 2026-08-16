resource "azuread_service_principal" "this" {
  client_id                    = var.sp_client_id
  app_role_assignment_required = false
  owners                       = var.sp_owners
}
