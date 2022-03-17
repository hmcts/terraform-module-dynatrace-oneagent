locals {
  dynatrace_settings = var.hostgroup == null && var.server == null ? "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"installerArguments\" : \"--set-network-zone=azure.cft\" }" : var.hostgroup != null && var.server == null ? "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"hostGroup\" : \"${var.hostgroup}\" , \"installerArguments\" : \"--set-network-zone=azure.cft\"}" : var.hostgroup == null && var.server != null ? "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"server\" : \"${var.server}\" }" : "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"hostGroup\" : \"${var.hostgroup}\" , \"server\" : \"${var.server}\" , \"installerArguments\" : \"--set-network-zone=azure.cft\" }"
}

output "dynatrace_settings" {
  value = local.dynatrace_settings
}
