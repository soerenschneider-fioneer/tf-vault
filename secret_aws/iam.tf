resource "aws_iam_user" "vault" {
  name = "vault"
  path = "/system/"
}

resource "aws_iam_access_key" "vault" {
  user = aws_iam_user.vault.name
}
