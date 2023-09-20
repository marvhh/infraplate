# general stuff
variable "ssh_private_key_path" {
  type = string
  default = "~/.ssh/marv.hamburg/id_rsa"
}

variable "ssh_public_key_path" {
  type = string
  default = "~/.ssh/marv.hamburg/id_rsa.pub"
}

variable "ssh_port" {
  type = number
  default = 22
}

variable "cloud-init_user" {
  type = string
  default = "marv"
}

variable "template_name" {
  type = string
  default = "debian-12-generic-amd64"
}

# proxmox stuff
variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token_id" {
  type = string
  sensitive = true
}

variable "proxmox_api_token_secret" {
  type =  string
  sensitive = true
}

variable "proxmox_node" {
  type = string
  default = "tcr"
}

variable "proxmox_storage" {
  type = string
  default = "ssd-480"
}
