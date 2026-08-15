variable "rg" {
  type = map(object({
    name     = string
    location = string
  }))
}
variable "vnet" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}
variable "subnet" {
  type = map(object({
    name                 = string
    location             = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}
variable "pips" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
  }))
}
variable "vms" {
  type = map(object({
     nic_name            = string
         
        location            = string
        rg_name             = string
        nic_subnet_name      = string
        nic_vnet_name       = string
        nic_public_ip_name  = string
        vm_name              = string
        vm_size             = any
        admin_username      = any
        admin_password      = any
  }))
}
variable "peerings" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    remote_vnet_name     = string
  }))
}
variable "bastion" {

  type = map(object({

    name                 = string
    location             = string
    resource_group_name  = string

    subnet_name          = string
    virtual_network_name = string

    public_ip_name       = string

  }))
}
