<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | github.com/Foxon-Consulting/tf-module-aws-vpc.git | main |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_client"></a> [client](#input\_client) | Name of the client | `string` | n/a | yes |
| <a name="input_env_type"></a> [env\_type](#input\_env\_type) | Environment type. npe (Non Production Environment) or prd (Production Environment) | `string` | `"npe"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_availability_zone"></a> [availability\_zone](#output\_availability\_zone) | value of the availability zone |
| <a name="output_availability_zone_rds"></a> [availability\_zone\_rds](#output\_availability\_zone\_rds) | value of the availability zone for RDS. It is mandatory to have 2 different AZ to deploy a RDS |
| <a name="output_igw_arn"></a> [igw\_arn](#output\_igw\_arn) | value of the internet gateway arn |
| <a name="output_igw_id"></a> [igw\_id](#output\_igw\_id) | value of the internet gateway id |
| <a name="output_private_subnet_arn"></a> [private\_subnet\_arn](#output\_private\_subnet\_arn) | value of the private subnet arn |
| <a name="output_private_subnet_id"></a> [private\_subnet\_id](#output\_private\_subnet\_id) | value of the private subnet id |
| <a name="output_private_subnet_rds_arn"></a> [private\_subnet\_rds\_arn](#output\_private\_subnet\_rds\_arn) | value of the private rds subnet arn |
| <a name="output_private_subnet_rds_id"></a> [private\_subnet\_rds\_id](#output\_private\_subnet\_rds\_id) | value of the private rds subnet id |
| <a name="output_public_subnet_arn"></a> [public\_subnet\_arn](#output\_public\_subnet\_arn) | value of the public subnet arn |
| <a name="output_public_subnet_id"></a> [public\_subnet\_id](#output\_public\_subnet\_id) | value of the public subnet id |
| <a name="output_rta_arn"></a> [rta\_arn](#output\_rta\_arn) | value of the route table arn |
| <a name="output_rta_id"></a> [rta\_id](#output\_rta\_id) | value of the route table id |
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | value of vpc arn |
| <a name="output_vpc_enable_dns_hostnames"></a> [vpc\_enable\_dns\_hostnames](#output\_vpc\_enable\_dns\_hostnames) | true if dns hostnames are enabled on the VPC |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | value of vpc id |
<!-- END_TF_DOCS -->
