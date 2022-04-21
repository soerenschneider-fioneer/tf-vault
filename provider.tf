terraform {
  experiments = [module_variable_optional_attrs]

  required_providers {
    vault = {
      source  = "vault"
      version = "3.5.0"
    }
    aws = {
      source  = "aws"
      version = "~> 3.70.0"
    }
    local = {
      source = "hashicorp/local"
    }
  }

  backend "s3" {
    bucket               = "soerenschneider-terraform"
    key                  = "vault"
    workspace_key_prefix = "vault"
    region               = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  max_lease_ttl_seconds = 120
}
