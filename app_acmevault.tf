module "acmevault" {
  source      = "./app_acmevault"
  aws_path    = module.aws[0].path
  path_prefix = "${vault_mount.kv.path}/data/acmevault"
}
