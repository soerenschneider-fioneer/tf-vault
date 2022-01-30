module "dyndns" {
  source                  = "./app_dyndns"
  aws_secret_backend_path = module.aws[0].path
  route53_hosted_zone     = var.route53_hosted_zone
}
