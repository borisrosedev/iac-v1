output "sp_app_role_ids" {
  value = azuread_service_principal.this.app_role_ids
}

output "sp_app_roles" {
  value = azuread_service_principal.this.app_roles
}

output "sp_dp_name" {
  value = azuread_service_principal.this.display_name
}

output "sp_app_tenant_id" {
  value = azuread_service_principal.this.application_tenant_id
}

output "sp_object_id" {
  value = azuread_service_principal.this.object_id
}
