variable "auto_upgrade_minor_version" {
  description = "Automatically upgrade to new minor version when available."
  default     = true
  type        = bool
}

variable "hostgroup" {
  description = "Define the hostgroup to which the VM belongs."
  type        = string
  default     = null
}

variable "tenant_id" {
  description = "The Dynatrace environment ID."
  type        = string
}

variable "token" {
  description = "The Dynatrace PaaS token."
  type        = string
}

variable "type_handler_version" {
  description = "Version of Dynatrace OneAgent - To find: az vm extension image list --location uksouth -p dynatrace.ruxit -o table"
  default     = "2.3"
  type        = string
}

variable "server" {
  description = "The server URL, if you want to configure an alternative communication endpoint."
  type        = string
  default     = null
}

variable "network_zone" {
  description = "the network zone the oneagent is attached to i.e azure.cft"
  type        = string
  default     = "azure.cft"
}

variable "virtual_machine_os" {
  description = "Windows or Linux."
  type        = string
}

variable "virtual_machine_type" {
  description = "vm or vmss."
  type        = string
}

variable "virtual_machine_scale_set_id" {
  description = "Virtual machine scale set resource id."
  default     = ""
  type        = string
}

variable "virtual_machine_id" {
  description = "Virtual machine resource id."
  default     = ""
  type        = string
}

variable "tags" {
  description = "Dynatrace OneAgent tags."
  type        = map(any)
  default     = null
}
