
resource "vault_policy" "pki_boyscout" {
  name = "pki_boyscout"

  policy = <<EOT
path "${vault_mount.pki_intermediate.path}/revoke" {
  capabilities = ["update"]
}

path "${vault_mount.pki_intermediate.path}/tidy" {
  capabilities = ["update"]
}
EOT
}

resource "vault_policy" "role" {
  for_each = { for role in var.backend_roles : role.name => role }
  name     = "pki_${each.value.name}"

  policy = <<EOT
path "${vault_mount.pki_intermediate.path}/issue/${each.value.name}" {
  capabilities = ["update"]
}
EOT
}