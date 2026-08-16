output "afic_application_id" {
  value = azuread_application_federated_identity_credential.this.application_id
}

output "afic_credential_id" {
  value = azuread_application_federated_identity_credential.this.credential_id
}

output "afic_display_name" {
  value = azuread_application_federated_identity_credential.this.display_name
}

output "afic_id" {
  value = azuread_application_federated_identity_credential.this.id
}

output "afic_issuer" {
  value = azuread_application_federated_identity_credential.this.issuer
}

output "afic_subject" {
  value = azuread_application_federated_identity_credential.this.subject
}
