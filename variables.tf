#=============VARiABLES for VPC========================

variable "vpc_cidr_block" {
  type    = string
  default = "17.0.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = ""
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

#=============VARiABLES for PUBLIC & Output of VPC & Private SUBNET========================

variable "public_subnet_cidr" {
type = string
default     = "17.0.6.0/24"
}

variable "public_subnet_zone" {
type = string
default     = "ap-south-1a" 
}

variable "public_subnet_name" {
type = string
default     = "vault-public-subnet" 
}

variable "public_subnet_id" {
type = string
default     = "" 
}

variable "vpc_id_get" {
    type = string
    default = ""
}

variable "private_subnet_cidr" {
type = list(string)
default     = ["17.0.9.0/24", "17.0.4.0/24"]
}

variable "private_subnet_zone" {
type = list(string)
default     = ["ap-south-1a", "ap-south-1b"]
}

# vault-IGW

variable "igw_name" {
default     = "vault-IGW"
}

# vault-NAT

variable "nat_name" {
default     = "vault-NAT"
}

variable "public_route_destination" {
    type = string
    default = "0.0.0.0/0"
}

variable "igw_id" {
  default = ""
}

variable "public_route_name" {
  default = "vault-public-route"
}


variable "public_route_id" {
type = string
default     = "" 
}

variable "private_route_destination" {
    type = string
    default = "0.0.0.0/0"
}

variable "nat_gateway" {
  default = ""
}

variable "private_route_name" {
    type = string
    default = "vault-private-route"
}

variable "private_subnet_id" {
type = list(string)
default     = [] 
}

#============


variable "public_SG_name" {
    type = string
    default = "vault-public-SG"
}

variable "SG_protocol" {
    type = string
    default = "tcp"
}

variable "SG_cidr_ingress" {
    type = string
    default = "0.0.0.0/0"
}

variable "SG_cidr_egress" {
    type = string
    default =  "0.0.0.0/0" 
}

variable "public_SG_tagname" {
     type = string
     default = "vault-SG-bastion"
}

variable private_SG_tagname {
  type        = string
  default     = "vault-private-SG"
}

variable private_SG_name {
  type        = string
  default     = "vault-SG-app"
}

# ===============


variable "ami_id" {
default =  "ami-0f5ee92e2d63afc18"
}

variable "instance_type" {
default =  "t3.medium"
}

variable "key_name" {
    default = "tool"
}

variable "instance_tagname2" {
default =  "vault_app"
}


variable "security_private_id" {
  type = string
     default = ""
}

#===========


variable "ami_id2" {
default =  "ami-0f5ee92e2d63afc18"
}

variable "instance_type2" {
default =  "t2.micro"
}

variable "instance_tagname1" {
default =  "Bastion-1"
}

variable "public_ip_ins" {
    default = "true"
}

variable "security_bastion_id" {
    default = ""
}

