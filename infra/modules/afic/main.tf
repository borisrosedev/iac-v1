resource "azuread_application_federated_identity_credential" "this" {
  application_id = var.afic_app_id
  display_name   = var.afic_dp_name
  audiences      = var.afic_audiences
  issuer         = var.afic_issuer
  subject        = var.afic_subject
}
