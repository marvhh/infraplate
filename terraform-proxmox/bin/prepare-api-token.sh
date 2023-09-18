#!/bin/bash
API_TOKEN="tf-$(cat /proc/sys/kernel/random/uuid)"

# add pve role with permissions
pveum role add TerraformProv -privs "Datastore.AllocateSpace Datastore.Audit Pool.Allocate Sys.Audit Sys.Console Sys.Modify VM.Allocate VM.Audit VM.Clone VM.Config.CDROM VM.Config.Cloudinit VM.Config.CPU VM.Config.Disk VM.Config.HWType VM.Config.Memory VM.Config.Network VM.Config.Options VM.Migrate VM.Monitor VM.PowerMgmt SDN.Use"

# add user
pveum user add terraform-prov@pve

# add token
pveum user token add terraform-prov@pve "$API_TOKEN" --comment "terraform access token"

# set permissions
pveum aclmod / -user terraform-prov@pve -role TerraformProv
