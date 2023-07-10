variable "vpc_cidr_block" {
  type    = string
  default = "17.0.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "vaultVPC"
}

variable "vpc_enable_dns_support" {
  type    = bool
  default = true
}

variable "vpc_enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "vpc_instance_tenancy" {
  type    = string
  default = "default"
}