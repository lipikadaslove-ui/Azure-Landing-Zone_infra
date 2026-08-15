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
variable "public_ip_ids" {
  type = map(string)
}