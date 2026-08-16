module "app_registration_1" {
 source = "../../modules/app_registration"
 app_registration_dp_name = var.app_registration_dp_name
}


module "afic_1" {
  source = "../../modules/afic"
  afic_app_id = var.afic_app_id
  afic_dp_name = var.afic_dp_name
  afic_issuer = var.afic_issuer
  afic_subject = var.afic_subject
  afic_audiences = var.afic_audiences
}
