resource "vault_quota_rate_limit" "global" {
  name = "global"
  path = ""
  rate = 50
}

resource "vault_audit" "file" {
  count = var.audit_file_path == null ? 0 : 1
  type  = "file"

  options = {
    file_path = var.audit_file_path
  }
}
