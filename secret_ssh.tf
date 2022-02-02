module "ssh" {
  source          = "./secret_ssh"
  allowed_domains = var.ssh_allowed_domains
}
