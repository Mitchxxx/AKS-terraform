variable "resource_group_location" {
  type        = string
  default     = "westeurope"
  description = "Location of the resource group"
}

variable "resource_group_name" {
  type        = string
  default     = "ibtLearning"
  description = "Prefix of the resource group name that's commbined with the randomd Id so name is unique in Azure Subscription"
}