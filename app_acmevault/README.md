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
| [vault_aws_secret_backend_role.acmevault](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/aws_secret_backend_role) | resource |
| [vault_policy.acmevault_client](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_policy.acmevault_server](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_path"></a> [aws\_path](#input\_aws\_path) | n/a | `string` | n/a | yes |
| <a name="input_path_prefix"></a> [path\_prefix](#input\_path\_prefix) | n/a | `string` | `"/secret/data/acmevault"` | no |

## Outputs

No outputs.
