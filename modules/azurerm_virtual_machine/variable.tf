variable "vms" {
  type = map(any)
}
variable "subnet_ids" {
  type = map(string)
}

variable "public_ip_ids" {
  type = map(string)
}