data "azuread_client_config" "current" {}

data "azurerm_subscription" "primary" {}


module "app_registration_1" {
  source                   = "../../modules/app_registration"
  app_registration_dp_name = var.app_registration_dp_name
}


module "service_principal_1" {
  source       = "../../modules/service_principal"
  sp_client_id = module.app_registration_1.client_id
  sp_owners    = [data.azuread_client_config.current.object_id]
}


module "role_assignment_1" {
  source                          = "../../modules/role_assignment"
  azurerm_client_config_object_id = module.service_principal_1.sp_object_id
  azurerm_subscription_primary_id = data.azurerm_subscription.primary.id
}


module "afic_1" {
  source         = "../../modules/afic"
  afic_app_id    = module.app_registration_1.application_id
  afic_dp_name   = var.afic_dp_name
  afic_issuer    = var.afic_issuer
  afic_subject   = var.afic_subject
  afic_audiences = var.afic_audiences
}
