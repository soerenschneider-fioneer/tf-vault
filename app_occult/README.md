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
| [vault_mount.transit](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |
| [vault_policy.occult](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_transit_secret_backend_key.key](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/transit_secret_backend_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kv_path"></a> [kv\_path](#input\_kv\_path) | n/a | `string` | `"secret"` | no |
| <a name="input_transit_keys"></a> [transit\_keys](#input\_transit\_keys) | n/a | <pre>list(object({<br>    name             = string<br>    type             = optional(string)<br>    deletion_allowed = optional(bool)<br>  }))</pre> | `[]` | no |
| <a name="input_transit_path"></a> [transit\_path](#input\_transit\_path) | n/a | `string` | `"occult"` | no |

## Outputs

No outputs.
