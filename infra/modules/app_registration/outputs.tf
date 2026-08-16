output "application_id" {
  value = azuread_application_registration.this.id
}

output "client_id" {
  value = azuread_application_registration.this.client_id
}

output "object_id" {
  value = azuread_application_registration.this.object_id
}

output "display_name" {
  value = azuread_application_registration.this.display_name
}
