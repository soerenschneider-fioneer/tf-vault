## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.ca_file_vault](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.signed_intermediate](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [vault_mount.pki_intermediate](https://registry.terraform.io/providers/hashicorp/vault/3.3.0/docs/resources/mount) | resource |
| [vault_mount.pki_root](https://registry.terraform.io/providers/hashicorp/vault/3.3.0/docs/resources/mount) | resource |
| [vault_pki_secret_backend_config_urls.config_urls](https://registry.terraform.io/providers/hashicorp/vault/3.3.0/docs/resources/pki_secret_backend_config_urls) | resource |
| [vault_pki_secret_backend_intermediate_cert_request.intermediate](https://registry.terraform.io/providers/hashicorp/vault/3.3.0/docs/resources/pki_secret_backend_intermediate_cert_request) | resource |
| [vault_pki_secret_backend_intermediate_set_signed.intermediate](https://registry.terraform.io/providers/hashicorp/vault/3.3.0/docs/resources/pki_secret_backend_intermediate_set_signed) | resource |
| [vault_pki_secret_backend_role.role](https://registry.terraform.io/providers/hashicorp/vault/3.3.0/docs/resources/pki_secret_backend_role) | resource |
| [vault_pki_secret_backend_root_cert.root](https://registry.terraform.io/providers/hashicorp/vault/3.3.0/docs/resources/pki_secret_backend_root_cert) | resource |
| [vault_pki_secret_backend_root_sign_intermediate.intermediate](https://registry.terraform.io/providers/hashicorp/vault/3.3.0/docs/resources/pki_secret_backend_root_sign_intermediate) | resource |
| [vault_policy.pki_boyscout](https://registry.terraform.io/providers/hashicorp/vault/3.3.0/docs/resources/policy) | resource |
| [vault_policy.role](https://registry.terraform.io/providers/hashicorp/vault/3.3.0/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_roles"></a> [backend\_roles](#input\_backend\_roles) | n/a | <pre>list(object({<br>    name             = string<br>    ttl              = optional(number)<br>    key_type         = optional(string)<br>    key_bits         = optional(number)<br>    allowed_domains  = list(string)<br>    allow_subdomains = optional(bool)<br>  }))</pre> | n/a | yes |
| <a name="input_cert_domain"></a> [cert\_domain](#input\_cert\_domain) | n/a | `string` | n/a | yes |
| <a name="input_intermediate_common_name"></a> [intermediate\_common\_name](#input\_intermediate\_common\_name) | n/a | `string` | n/a | yes |
| <a name="input_intermediate_format"></a> [intermediate\_format](#input\_intermediate\_format) | n/a | `string` | `"pem"` | no |
| <a name="input_intermediate_key_bits"></a> [intermediate\_key\_bits](#input\_intermediate\_key\_bits) | n/a | `number` | `4096` | no |
| <a name="input_intermediate_key_type"></a> [intermediate\_key\_type](#input\_intermediate\_key\_type) | n/a | `string` | `"rsa"` | no |
| <a name="input_intermediate_mount_max_ttl"></a> [intermediate\_mount\_max\_ttl](#input\_intermediate\_mount\_max\_ttl) | n/a | `number` | `172800` | no |
| <a name="input_intermediate_mount_path"></a> [intermediate\_mount\_path](#input\_intermediate\_mount\_path) | n/a | `string` | `"pki_intermediate"` | no |
| <a name="input_intermediate_organization"></a> [intermediate\_organization](#input\_intermediate\_organization) | n/a | `string` | n/a | yes |
| <a name="input_intermediate_ou"></a> [intermediate\_ou](#input\_intermediate\_ou) | n/a | `string` | n/a | yes |
| <a name="input_intermediate_private_key_format"></a> [intermediate\_private\_key\_format](#input\_intermediate\_private\_key\_format) | n/a | `string` | `"der"` | no |
| <a name="input_intermediate_ttl"></a> [intermediate\_ttl](#input\_intermediate\_ttl) | n/a | `number` | `94608000` | no |
| <a name="input_root_common_name"></a> [root\_common\_name](#input\_root\_common\_name) | n/a | `string` | n/a | yes |
| <a name="input_root_format"></a> [root\_format](#input\_root\_format) | n/a | `string` | `"pem"` | no |
| <a name="input_root_key_bits"></a> [root\_key\_bits](#input\_root\_key\_bits) | n/a | `number` | `4096` | no |
| <a name="input_root_key_type"></a> [root\_key\_type](#input\_root\_key\_type) | n/a | `string` | `"rsa"` | no |
| <a name="input_root_mount_max_ttl"></a> [root\_mount\_max\_ttl](#input\_root\_mount\_max\_ttl) | n/a | `number` | `94608000` | no |
| <a name="input_root_mount_path"></a> [root\_mount\_path](#input\_root\_mount\_path) | n/a | `string` | `"pki_root"` | no |
| <a name="input_root_organization"></a> [root\_organization](#input\_root\_organization) | n/a | `string` | n/a | yes |
| <a name="input_root_private_key_format"></a> [root\_private\_key\_format](#input\_root\_private\_key\_format) | n/a | `string` | `"der"` | no |
| <a name="input_root_ttl"></a> [root\_ttl](#input\_root\_ttl) | n/a | `number` | `315360000` | no |
| <a name="input_server_url"></a> [server\_url](#input\_server\_url) | URL of this vault instance, e.g. https://my-vault:8200 | `string` | n/a | yes |

## Outputs

No outputs.
