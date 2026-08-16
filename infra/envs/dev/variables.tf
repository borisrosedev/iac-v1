variable "afic_app_id" {
  type = string
}

variable "afic_dp_name" {
  type = string
}

variable "afic_audiences" {
  type = list(string)
}

variable "afic_issuer" {
  type    = string
  default = "https://token.actions.githubusercontent.com"
}

variable "afic_subject" {
  type = string
  validation {
    condition     = can(regex("^repo:"), var.afic_subject)
    error_message = "Afic Subject must start with repo:"
  }
}

# ================== APP REGISTRATION =======

variable "app_registration_dp_name" {
  type = string
}
