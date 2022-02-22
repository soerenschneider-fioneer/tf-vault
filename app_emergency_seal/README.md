## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.2.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_policy.emergency](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_token.emergency](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/token) | resource |
| [vault_token_auth_backend_role.emergency](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/token_auth_backend_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token_bound_cidrs"></a> [token\_bound\_cidrs](#input\_token\_bound\_cidrs) | n/a | `list(string)` | `[]` | no |
| <a name="input_token_ttl"></a> [token\_ttl](#input\_token\_ttl) | n/a | `string` | `"9600h"` | no |

## Outputs

No outputs.
