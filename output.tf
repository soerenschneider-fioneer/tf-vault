output "prometheus_token" {
  value     = module.prometheus.prometheus_token
  sensitive = true
}
