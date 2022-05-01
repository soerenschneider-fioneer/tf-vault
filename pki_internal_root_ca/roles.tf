resource "vault_pki_secret_backend_role" "role" {
  for_each                 = { for role in var.backend_roles : role.name => role }
  backend                  = vault_mount.pki_intermediate.path
  name                     = each.value.name
  ttl                      = coalesce(each.value.ttl, local.default_1d_in_sec)
  max_ttl                  = coalesce(each.value.max_ttl, local.default_1mo_in_sec)
  allow_ip_sans            = true
  key_type                 = coalesce(each.value.key_type, "rsa")
  key_bits                 = coalesce(each.value.key_bits, 3072)
  allowed_domains          = each.value.allowed_domains
  allow_subdomains         = coalesce(each.value.allow_subdomains, true)
  allowed_domains_template = true
  allow_bare_domains       = coalesce(each.value.allow_bare_domains, false)
}
