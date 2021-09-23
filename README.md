# Terraform Module Dynatrace OneAgent

Terraform module to deploy Dynatrace OneAgent to Windows &amp; Linux VMs/VMSS via Azure Extentions.

Usage
------------

**Linux VM**
```
module "dynatrace-oneagent" {
  source = "github.com/hmcts/terraform-module-dynatrace-oneagent"

  tenant_id            = "{tenant_id}"
  token                = "{token}"
  virtual_machine_os   = "linux"
  virtual_machine_type = "vm"
  virtual_machine_id   = {virtual_machine_id}
}
```

**Windows VM**
```
module "dynatrace-oneagent" {
  source = "github.com/hmcts/terraform-module-dynatrace-oneagent"

  tenant_id            = "{tenant_id}"
  token                = "{token}"
  virtual_machine_os   = "windows"
  virtual_machine_type = "vm"
  virtual_machine_id   = {virtual_machine_id}
}
```

**Linux VMSS**
```
module "dynatrace-oneagent" {
  source = "github.com/hmcts/terraform-module-dynatrace-oneagent"

  tenant_id            = "{tenant_id}"
  token                = "{token}"
  virtual_machine_os   = "linux"
  virtual_machine_type = "vm"
  virtual_machine_id   = {virtual_machine_id}
}
```

**Windows VMSS**
```
module "dynatrace-oneagent" {
  source = "github.com/hmcts/terraform-module-dynatrace-oneagent"

  tenant_id            = "{tenant_id}"
  token                = "{token}"
  virtual_machine_os   = "windows"
  virtual_machine_type = "vmss"
  virtual_machine_id   = {virtual_machine_id}
}
```

Parameters
--------------

The following variables are available in `defaults/main/` and can be overriden:

| Name | Default | Description
|-|-|-
| `dynatrace_environment_url` | `""` | URL of the target Dynatrace environment (SaaS or Managed)
| `dynatrace_paas_token` | `""` | The API Token retrieved from the "Deploy Dynatrace" installer page
| `dynatrace_oneagent_version` | `"latest"` | The required version of the OneAgent in 1.155.275.20181112-084458 format
| `dynatrace_oneagent_download_dir` | `Linux: /tmp/ Windows: C:\Windows\Temp\` | Dynatrace OneAgent installer file download directory
| `dynatrace_oneagent_install_args` | `APP_LOG_CONTENT_ACCESS=1 INFRA_ONLY=0` | Dynatrace OneAgent install parameters defined as a list of items
| `dynatrace_oneagent_host_tags` | `""` | Values to automatically add tags to a host, should contain a list of strings or key/value pairs. Spaces are used to separate tag values.
| `dynatrace_oneagent_host_metadata` | `""` | Values to automatically add metadata to a host, should contain a list of strings or key/value pairs. Spaces are used to separate metadata values.
| `dynatrace_oneagent_hostname` | `""` | Overrides an automatically detected host name.
| `dynatrace_oneagent_state:` | `"started"` | Set initial oneagent state. Recommended values: `started` or `stopped`
| `dynatrace_oneagent_restart_state` | `"restarted"` | Set oneagent state when configuration changes are made. Recommended values: `restarted` or `reloaded`
| `dynatrace_oneagent_package_state` | `"present"` | oneagent package state; use `present` to make sure it's installed, or `latest`
| `dynatrace_oneagent_package_download_validate_certs` | `yes` | oneagent package download using secure https; use `no` to skip tls verification
