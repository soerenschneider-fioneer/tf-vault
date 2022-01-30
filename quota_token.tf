resource "vault_quota_rate_limit" "auth" {
  name = "auth"
  path = "auth/token/"
  rate = 500
}
