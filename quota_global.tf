resource "vault_quota_rate_limit" "global" {
  name = "global"
  path = ""
  rate = 50
}
