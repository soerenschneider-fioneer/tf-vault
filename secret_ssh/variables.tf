variable "ssh_path" {
  type    = string
  default = "ssh"
}

variable "ttl" {
  type    = number
  default = 3600 * 24 * 2
}

variable "max_ttl" {
  type    = number
  default = 3600 * 24 * 7
}

variable "allowed_domains" {
  type = list(string)
}

variable "allow_subdomains" {
  type    = bool
  default = false
}
