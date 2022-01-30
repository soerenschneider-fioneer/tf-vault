module "emergency_seal" {
  source            = "./app_emergency_seal"
  token_ttl         = var.emergency_seal_token_ttl
  token_bound_cidrs = var.emergency_seal_token_cidrs
}
