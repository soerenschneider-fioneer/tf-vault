resource "vault_quota_rate_limit" "kv" {
  name = "kv"
  path = replace(vault_mount.kv.path, "/", "")
  rate = 10
}
