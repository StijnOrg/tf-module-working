variable "res_id" {
  type        = string
  description = "Name base of the user managed identity to be created."
}

variable "env_id" {
  type        = string
  description = "Humanitec env id"
}

variable "app_id" {
  type        = string
  description = "Name of the solution which will use this user managed identity"
}

variable "env_type" {
  type        = string
  description = "Humanitec Environment type."
}

variable "location" {
  type        = string
  description = "The Azure location where the resource will be deployed."
  default     = "Germany West Central"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}

locals {
  tags = merge(var.tags, {
    "source"            = "platform-humanitec"
    "creationTimestamp" = timestamp()
    "environmentType"   = var.env_type
  })

  resource_suffix = module.humanitecvars.humanitec_env_type_resource_suffix_mapping[var.env_type]
  name            = var.env_type == var.env_id ? "${module.naming.resource_group.slug}-sol-${var.app_id}-${local.resource_suffix}" : "${module.naming.resource_group.slug}-sol-${var.app_id}-${var.env_id}-${local.resource_suffix}"

  subscription_id = module.humanitecvars.subscription_ids[local.resource_suffix]
  tenant_id       = module.humanitecvars.tenant_id
}