resource "vault_mount" "kv" {
  path        = "secret"
  type        = "kv-v2"
  description = "Secret kv mount"
}
