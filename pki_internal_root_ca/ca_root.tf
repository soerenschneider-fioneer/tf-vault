resource "vault_mount" "pki_root" {
  path        = var.root_mount_path
  type        = "pki"
  description = "Root CA"

  default_lease_ttl_seconds = 3600
  max_lease_ttl_seconds     = var.root_mount_max_ttl
}

resource "vault_pki_secret_backend_config_urls" "config_urls" {
  backend                 = vault_mount.pki_root.path
  issuing_certificates    = ["${var.server_url}/v1/pki/ca"]
  crl_distribution_points = ["${var.server_url}/v1/pki/crl"]
}

resource "vault_pki_secret_backend_root_cert" "root" {
  backend              = vault_mount.pki_root.path
  type                 = "internal"
  common_name          = var.root_common_name
  ttl                  = var.root_ttl
  format               = var.root_format
  private_key_format   = var.root_private_key_format
  key_type             = var.root_key_type
  key_bits             = var.root_key_bits
  exclude_cn_from_sans = true
  organization         = var.root_organization
}

resource "local_file" "ca_file_vault" {
  sensitive_content = vault_pki_secret_backend_root_cert.root.certificate
  filename          = "${path.root}/output/root.ca.pem"
  file_permission   = "0600"
}