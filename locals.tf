locals {
  dynatrace_settings = var.hostgroup == null && var.server == null ? "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" }" : var.hostgroup != null && var.server == null ? "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"hostGroup\" : \"${var.hostgroup}\" }" : var.hostgroup == null && var.server != null ? "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"server\" : \"${var.server}\" }" : "{ \"tenantId\" : \"${var.tenant_id}\" , \"token\" : \"${var.token}\" , \"hostGroup\" : \"${var.hostgroup}\" , \"server\" : \"${var.server}\" }"
}

output "dynatrace_settings" {
  value = local.dynatrace_settings
}
