variable "prometheus_token_cidrs" {
  type    = list(string)
  default = null
}

variable "prometheus_token_ttl" {
  type    = string
  default = "9600h"
}

variable "emergency_seal_token_ttl" {
  type    = string
  default = "9600h"
}

variable "emergency_seal_token_cidrs" {
  type    = list(string)
  default = []
}
