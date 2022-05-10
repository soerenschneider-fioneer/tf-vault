variable "vault_server_url" {
  type = string
  validation {
    condition     = can(regex("^http(s?)://", var.vault_server_url))
    error_message = "The vault_server_url must be a valid HTTP url."
  }
}

variable "pki_cert_domain" {
  type = string
}

variable "pki_root_common_name" {
  type = string
}

variable "pki_root_organization" {
  type = string
}

variable "pki_im_common_name" {
  type = string
}

variable "pki_im_organization" {
  type = string
}

variable "pki_im_ou" {
  type = string
}

variable "pki_allowed_token_domains" {
  type = list(string)
  default = []
}
