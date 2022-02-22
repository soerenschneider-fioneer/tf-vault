## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.70.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 3.2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.2.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_acmevault"></a> [acmevault](#module\_acmevault) | ./app_acmevault | n/a |
| <a name="module_approles"></a> [approles](#module\_approles) | ./auth_approle | n/a |
| <a name="module_aws"></a> [aws](#module\_aws) | ./secret_aws | n/a |
| <a name="module_dyndns"></a> [dyndns](#module\_dyndns) | ./app_dyndns | n/a |
| <a name="module_emergency_seal"></a> [emergency\_seal](#module\_emergency\_seal) | ./app_emergency_seal | n/a |
| <a name="module_occult"></a> [occult](#module\_occult) | ./app_occult | n/a |
| <a name="module_prometheus"></a> [prometheus](#module\_prometheus) | ./app_prometheus | n/a |
| <a name="module_ssh"></a> [ssh](#module\_ssh) | ./secret_ssh | n/a |

## Resources

| Name | Type |
|------|------|
| [vault_audit.file](https://registry.terraform.io/providers/vault/latest/docs/resources/audit) | resource |
| [vault_auth_backend.approle](https://registry.terraform.io/providers/vault/latest/docs/resources/auth_backend) | resource |
| [vault_auth_backend.userpass](https://registry.terraform.io/providers/vault/latest/docs/resources/auth_backend) | resource |
| [vault_generic_endpoint.user](https://registry.terraform.io/providers/vault/latest/docs/resources/generic_endpoint) | resource |
| [vault_identity_group.approle](https://registry.terraform.io/providers/vault/latest/docs/resources/identity_group) | resource |
| [vault_mount.kv](https://registry.terraform.io/providers/vault/latest/docs/resources/mount) | resource |
| [vault_policy.admin](https://registry.terraform.io/providers/vault/latest/docs/resources/policy) | resource |
| [vault_quota_rate_limit.auth](https://registry.terraform.io/providers/vault/latest/docs/resources/quota_rate_limit) | resource |
| [vault_quota_rate_limit.global](https://registry.terraform.io/providers/vault/latest/docs/resources/quota_rate_limit) | resource |
| [vault_quota_rate_limit.kv](https://registry.terraform.io/providers/vault/latest/docs/resources/quota_rate_limit) | resource |
| [vault_quota_rate_limit.userpass](https://registry.terraform.io/providers/vault/latest/docs/resources/quota_rate_limit) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acme_server_cidrs"></a> [acme\_server\_cidrs](#input\_acme\_server\_cidrs) | n/a | `list(string)` | `[]` | no |
| <a name="input_acme_server_secret_id_ttl"></a> [acme\_server\_secret\_id\_ttl](#input\_acme\_server\_secret\_id\_ttl) | n/a | `number` | `7776000` | no |
| <a name="input_approles"></a> [approles](#input\_approles) | n/a | <pre>list(object({<br>    role_name             = string<br>    role_id               = optional(string)<br>    token_policies        = optional(list(string))<br>    token_max_ttl         = optional(number)<br>    token_ttl             = optional(number)<br>    token_bound_cidrs     = optional(list(string))<br>    secret_id_ttl         = optional(number)<br>    secret_id_num_uses    = optional(number)<br>    secret_id_bound_cidrs = optional(list(string))<br>    identity_metadata     = optional(map(string))<br>    groups                = optional(list(string))<br>  }))</pre> | n/a | yes |
| <a name="input_audit_file_path"></a> [audit\_file\_path](#input\_audit\_file\_path) | n/a | `string` | `"/var/log/vault-audit.log"` | no |
| <a name="input_aws_account_id"></a> [aws\_account\_id](#input\_aws\_account\_id) | n/a | `string` | n/a | yes |
| <a name="input_aws_path"></a> [aws\_path](#input\_aws\_path) | n/a | `string` | `"aws"` | no |
| <a name="input_dyndns_server_cidrs"></a> [dyndns\_server\_cidrs](#input\_dyndns\_server\_cidrs) | n/a | `list(string)` | `[]` | no |
| <a name="input_emergency_seal_token_cidrs"></a> [emergency\_seal\_token\_cidrs](#input\_emergency\_seal\_token\_cidrs) | n/a | `list(string)` | `[]` | no |
| <a name="input_emergency_seal_token_ttl"></a> [emergency\_seal\_token\_ttl](#input\_emergency\_seal\_token\_ttl) | n/a | `string` | `"9600h"` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | n/a | <pre>list(object({<br>    name     = string<br>    policies = optional(list(string))<br>  }))</pre> | <pre>[<br>  {<br>    "name": "fileserver",<br>    "policies": [<br>      "occult"<br>    ]<br>  }<br>]</pre> | no |
| <a name="input_prometheus_token_cidrs"></a> [prometheus\_token\_cidrs](#input\_prometheus\_token\_cidrs) | n/a | `list(string)` | `null` | no |
| <a name="input_prometheus_token_ttl"></a> [prometheus\_token\_ttl](#input\_prometheus\_token\_ttl) | n/a | `string` | `"9600h"` | no |
| <a name="input_route53_hosted_zone"></a> [route53\_hosted\_zone](#input\_route53\_hosted\_zone) | n/a | `string` | n/a | yes |
| <a name="input_ssh_allowed_domains"></a> [ssh\_allowed\_domains](#input\_ssh\_allowed\_domains) | n/a | `list(string)` | `[]` | no |

## Outputs

No outputs.
