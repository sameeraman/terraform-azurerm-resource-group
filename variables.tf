variable "name" {
  description = "(Required) Resource group name"
  type        = string
}
variable "location" {
  description = "(Required) Location to deploy the resource group"
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to be applied on the resource group"
  type        = map(any)
  default     = {}
}
