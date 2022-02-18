resource "vault_quota_rate_limit" "userpass" {
  name = "userpass"
  path = "auth/${vault_auth_backend.userpass.path}"
  rate = 5
}
