# terraform-proxmox
deploy virtual maschines in proxmox with terraform

# requirements
Install [Terraform collection](https://galaxy.ansible.com/cloud/terraform) for Ansible:
```
ansible-galaxy collection install cloud.terraform
```

# usage
- prepare proxmox Server and create api token
- configure terrafom
- run terraform
- run playbooks against inventory

# Author
[Marvin Stark](https://github.com/marvhh)