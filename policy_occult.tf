resource "vault_policy" "occult" {
  name = "occult"

  policy = <<EOT
path "secret/data/occult/{{ identity.entity.metadata.occult }}" {
  capabilities = ["read"]
}

EOT
}
