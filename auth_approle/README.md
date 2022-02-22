## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 3.2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.2.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_approle_auth_backend_role.approle](https://registry.terraform.io/providers/hashicorp/vault/3.2.1/docs/resources/approle_auth_backend_role) | resource |
| [vault_identity_entity.approle_identity](https://registry.terraform.io/providers/hashicorp/vault/3.2.1/docs/resources/identity_entity) | resource |
| [vault_identity_entity_alias.approle_identity_alias](https://registry.terraform.io/providers/hashicorp/vault/3.2.1/docs/resources/identity_entity_alias) | resource |
| [vault_policy.approle_rotation](https://registry.terraform.io/providers/hashicorp/vault/3.2.1/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_approle_mount_accessor"></a> [approle\_mount\_accessor](#input\_approle\_mount\_accessor) | n/a | `string` | n/a | yes |
| <a name="input_approle_mount_path"></a> [approle\_mount\_path](#input\_approle\_mount\_path) | n/a | `string` | n/a | yes |
| <a name="input_approles"></a> [approles](#input\_approles) | n/a | <pre>list(object({<br>    role_name              = string<br>    role_id                = optional(string)<br>    role_id_from_role_name = optional(bool)<br>    token_policies         = optional(list(string))<br>    token_max_ttl          = optional(number)<br>    token_ttl              = optional(number)<br>    token_bound_cidrs      = optional(list(string))<br>    secret_id_ttl          = optional(number)<br>    secret_id_num_uses     = optional(number)<br>    secret_id_bound_cidrs  = optional(list(string))<br>    create_identity        = optional(bool)<br>    identity_metadata      = optional(map(string))<br>  }))</pre> | n/a | yes |
| <a name="input_cidr_map"></a> [cidr\_map](#input\_cidr\_map) | n/a | `map(list(string))` | <pre>{<br>  "dd": [<br>    "192.168.64.0/21"<br>  ],<br>  "ez": [<br>    "192.168.2.0/24"<br>  ],<br>  "pt": [<br>    "192.168.72.0/21"<br>  ],<br>  "wg": [<br>    "196.168.200.0/24"<br>  ]<br>}</pre> | no |
| <a name="input_global_bound_cidrs"></a> [global\_bound\_cidrs](#input\_global\_bound\_cidrs) | n/a | `list(string)` | `[]` | no |
| <a name="input_name_cidr_regex"></a> [name\_cidr\_regex](#input\_name\_cidr\_regex) | n/a | `string` | `"([a-z]{2}).[a-z]{3,}.[a-z]{2,}$"` | no |
| <a name="input_restricted_metadata"></a> [restricted\_metadata](#input\_restricted\_metadata) | n/a | `string` | `""` | no |
| <a name="input_role_name_prefix"></a> [role\_name\_prefix](#input\_role\_name\_prefix) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_approle_identities"></a> [approle\_identities](#output\_approle\_identities) | n/a |
| <a name="output_approle_identity_ids"></a> [approle\_identity\_ids](#output\_approle\_identity\_ids) | n/a |
