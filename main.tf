resource "azurerm_virtual_machine_scale_set_extension" "dynatrace-oneagent" {

  count = var.virtual_machine_type == "vmss" ? 1 : 0

  name                         = "Dynatrace"
  virtual_machine_scale_set_id = var.virtual_machine_scale_set_id
  publisher                    = "dynatrace.ruxit"
  type                         = lower(var.virtual_machine_os) == "windows" ? "oneAgentWindows" : "oneAgentLinux"
  type_handler_version         = var.type_handler_version
  auto_upgrade_minor_version   = var.auto_upgrade_minor_version
  protected_settings           = local.dynatrace_settings
}

resource "azurerm_virtual_machine_extension" "dynatrace-oneagent" {

  count = var.virtual_machine_type == "vm" ? 1 : 0

  name                       = "Dynatrace"
  virtual_machine_id         = var.virtual_machine_id
  publisher                  = "dynatrace.ruxit"
  type                       = lower(var.virtual_machine_os) == "windows" ? "oneAgentWindows" : "oneAgentLinux"
  type_handler_version       = var.type_handler_version
  auto_upgrade_minor_version = var.auto_upgrade_minor_version
  protected_settings         = local.dynatrace_settings
}
