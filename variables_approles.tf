variable "hosts_definition_file" {
  type = string
}

variable "approles" {
  type = list(object({
    role_name             = string
    role_id               = optional(string)
    token_policies        = optional(list(string))
    token_max_ttl         = optional(number)
    token_ttl             = optional(number)
    token_bound_cidrs     = optional(list(string))
    secret_id_ttl         = optional(number)
    secret_id_num_uses    = optional(number)
    secret_id_bound_cidrs = optional(list(string))
    identity_metadata     = optional(map(string))
    groups                = optional(list(string))
  }))
}

variable "identity_groups" {
  type = list(object({
    name     = string
    policies = optional(list(string))
  }))
  default = [
    { name = "fileserver", policies = ["occult"] }
  ]
}
