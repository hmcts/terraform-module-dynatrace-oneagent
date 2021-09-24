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
