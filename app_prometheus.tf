module "prometheus" {
  source      = "./app_prometheus"
  token_cidrs = var.prometheus_token_cidrs
}
