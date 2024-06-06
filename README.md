# humanitec-resource-group-base
Humanitec Terraform module for creating solution resource groups via base-env

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_humanitecvars"></a> [humanitecvars](#module\_humanitecvars) | github.com/liantisit-iac-modules/humanitecvars | v1 |
| <a name="module_naming"></a> [naming](#module\_naming) | Azure/naming/azurerm | ~> 0.4 |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_id"></a> [app\_id](#input\_app\_id) | Name of the solution which will use this user managed identity | `string` | n/a | yes |
| <a name="input_env_id"></a> [env\_id](#input\_env\_id) | Humanitec env id | `string` | n/a | yes |
| <a name="input_env_type"></a> [env\_type](#input\_env\_type) | Humanitec Environment type. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure location where the resource will be deployed. | `string` | `"Germany West Central"` | no |
| <a name="input_res_id"></a> [res\_id](#input\_res\_id) | Name base of the user managed identity to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
<!-- END_TF_DOCS -->