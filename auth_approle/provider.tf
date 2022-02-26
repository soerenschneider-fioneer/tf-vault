terraform {
  experiments = [module_variable_optional_attrs]
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.3.1"
    }
  }
}

