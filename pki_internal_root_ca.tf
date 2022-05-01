module "pki" {
  source = "./pki_internal_root_ca"

  server_url  = var.vault_server_url
  cert_domain = var.pki_cert_domain

  root_common_name  = var.pki_root_common_name
  root_organization = var.pki_root_organization

  intermediate_common_name  = var.pki_im_common_name
  intermediate_organization = var.pki_im_organization
  intermediate_ou           = var.pki_im_ou

  backend_roles = [
    {
      name = "machines",
      allowed_domains = [
        "{{identity.entity.aliases.${vault_auth_backend.approle.accessor}.metadata.host}}"
      ],
      max_ttl            = local.default_1w_in_sec,
      key_bits           = 2048,
      allow_bare_domains = true,
      allow_subdomains   = false,
    },
    {
      name = "humans",
      allowed_domains = [
        "{{identity.entity.aliases.${vault_auth_backend.approle.accessor}.metadata.host}}"
      ],
      ttl                = local.default_2w_in_sec,
      max_ttl            = local.default_1mo_in_sec,
      key_bits           = 3072,
      allow_bare_domains = true,
      allow_subdomains   = false,
    }
  ]
}
