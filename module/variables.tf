variable "resource_group_name" {
  description = "Common resource group to target"
  type        = string
}

variable "oms_resource_group_name" {
  description = "Log analytics resource group name"
  type        = string
}

variable "oms_name" {
  description = "Log analytics name"
  type        = string
}