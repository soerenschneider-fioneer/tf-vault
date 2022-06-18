variable "ssh_allowed_domains" {
  type    = list(string)
  default = []
}

variable "acme_server_cidrs" {
  type    = list(string)
  default = []
}

variable "dyndns_server_cidrs" {
  type    = list(string)
  default = []
}

variable "acme_server_secret_id_ttl" {
  type    = number
  default = 7776000
}

variable "audit_file_path" {
  type    = string
  default = "/var/log/vault-audit.log"
}

#variable "ldap_url" {
#  type = string
#  validation {
#    condition     = can(regex("(ldap://|ldaps://).*:[0-9]{2,5}", var.ldap_url))
#    error_message = "The ldap url does not match the regex."
#  }
#}
#
#variable "ldap_userdn" {
#  type = string
#  validation {
#    condition     = can(regex("^(ou=[\\w]+,){0,}(cn=[\\w]+,)*(cn=[\\w]+)$", var.ldap_userdn))
#    error_message = "The ldap userdn does not match the regex."
#  }
#}
#
#variable "ldap_groupdn" {
#  type = string
#  validation {
#    condition     = can(regex("^(ou=[\\w]+,){0,}(cn=[\\w]+,)*(cn=[\\w]+)$", var.ldap_groupdn))
#    error_message = "The ldap groupdn does not match the regex."
#  }
#}
