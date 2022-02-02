module "occult" {
  source  = "./app_occult"
  kv_path = vault_mount.kv.path
}
