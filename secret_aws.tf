module "aws" {
  count          = var.aws_account_id == null ? 0 : 1
  source         = "./secret_aws"
  aws_account_id = var.aws_account_id
}
