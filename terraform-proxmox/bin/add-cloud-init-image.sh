#!/bin/bash
id=$1
image=$2

virt-customize --install qemu-guest-agent -a $image
qm create $id --name "$(basename $image .qcow2)" --memory 2048 -net0 virtio,bridge=vmbr0
qm importdisk $id $image local-lvm
qm set $id --scsihw virtio-scsi-single --scsi0 local-lvm:vm-$id-disk-0,iothread=1
qm set $id --ide2 local-lvm:cloudinit
qm set $id --boot c --bootdisk scsi0
qm set $id --serial0 socket --vga serial0
qm set $id --agent enabled=1
qm set $id --ipconfig0 ip=dhcp
qm resize $id scsi0 50G
qm template $id
