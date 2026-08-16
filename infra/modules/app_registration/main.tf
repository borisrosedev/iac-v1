resource "azuread_application_registration" "this" {
  display_name     = var.app_registration_dp_name
}
