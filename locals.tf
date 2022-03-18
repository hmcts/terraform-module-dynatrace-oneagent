locals {
  dynatrace_settings = var.hostgroup == null && var.server == null ? "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"installerArguments\" : \"--set-network-zone=${var.network_zone}\" }" : var.hostgroup != null && var.server == null ? "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"hostGroup\" : \"${var.hostgroup}\" , \"installerArguments\" : \"--set-network-zone=${var.network_zone}\"}" : var.hostgroup == null && var.server != null ? "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"server\" : \"${var.server}\" , \"installerArguments\" : \"--set-network-zone=${var.network_zone}\" }" : "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"hostGroup\" : \"${var.hostgroup}\" , \"server\" : \"${var.server}\" , \"installerArguments\" : \"--set-network-zone=${var.network_zone}\" }"
}

output "dynatrace_settings" {
  value = local.dynatrace_settings
}
