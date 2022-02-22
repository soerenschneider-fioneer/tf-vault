## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_policy.prometheus](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_token.prometheus](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/token) | resource |
| [vault_token_auth_backend_role.prometheus](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/token_auth_backend_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token_cidrs"></a> [token\_cidrs](#input\_token\_cidrs) | n/a | `list(string)` | `[]` | no |
| <a name="input_token_ttl"></a> [token\_ttl](#input\_token\_ttl) | n/a | `string` | `"9600h"` | no |

## Outputs

No outputs.
