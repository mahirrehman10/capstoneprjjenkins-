variable "resource_group_name" {
  default = "rg-nginx-demo"
}

variable "location" {
  default = "East US"
}

variable "vnet_name" {
  default = "vnet-demo"
}

variable "subnet_name" {
  default = "subnet-demo"
}

variable "nsg_name" {
  default = "nsg-demo"
}

variable "public_ip_name" {
  default = "publicip-demo"
}

variable "nic_name" {
  default = "nic-demo"
}

variable "vm_name" {
  default = "vm-azure-nginx"
}

variable "admin_username" {
  default = "azureuser"
}

variable "ssh_public_key_path" {
  description = "/home/mahir/.ssh/azure-key.pub"
  type        = string
  default     = "" # Provide value via terraform.tfvars or CLI
}

