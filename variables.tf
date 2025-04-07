variable "name" {
  description = "Name of the user assigned identity resource."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group in which the user assigned identity will be created."
  type        = string
}

variable "location" {
  description = "Location of the resource group in which the user assigned identity will be created, if not set it will be the same as the resource group."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to be applied to the user assigned identity."
  type        = map(string)
  default     = {}
}