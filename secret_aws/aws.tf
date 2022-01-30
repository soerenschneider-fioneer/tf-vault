resource "vault_aws_secret_backend" "aws" {
  access_key                = aws_iam_access_key.vault.id
  secret_key                = aws_iam_access_key.vault.secret
  max_lease_ttl_seconds     = 3600
  default_lease_ttl_seconds = 600
}
