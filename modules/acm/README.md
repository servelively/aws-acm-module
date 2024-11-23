## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.acm_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_route53_record.record_acm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acm__create_cert"></a> [acm\_\_create\_cert](#input\_acm\_\_create\_cert) | n/a | `bool` | `false` | no |
| <a name="input_acm_domain_name"></a> [acm\_domain\_name](#input\_acm\_domain\_name) | n/a | `any` | n/a | yes |
| <a name="input_acm_tags"></a> [acm\_tags](#input\_acm\_tags) | n/a | `map` | <pre>{<br/>  "Name": "Terraform"<br/>}</pre> | no |
| <a name="input_acm_validation_method"></a> [acm\_validation\_method](#input\_acm\_validation\_method) | n/a | `string` | `"DNS"` | no |
| <a name="input_aws_zone_id"></a> [aws\_zone\_id](#input\_aws\_zone\_id) | n/a | `string` | `""` | no |
| <a name="input_create_acm_cert"></a> [create\_acm\_cert](#input\_create\_acm\_cert) | n/a | `bool` | `false` | no |
| <a name="input_validate_acm_cert"></a> [validate\_acm\_cert](#input\_validate\_acm\_cert) | n/a | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acm_arn"></a> [acm\_arn](#output\_acm\_arn) | n/a |
| <a name="output_acm_domain_name"></a> [acm\_domain\_name](#output\_acm\_domain\_name) | n/a |
| <a name="output_acm_domain_validation_options"></a> [acm\_domain\_validation\_options](#output\_acm\_domain\_validation\_options) | n/a |
| <a name="output_acm_id"></a> [acm\_id](#output\_acm\_id) | n/a |
