variable "vpc_id_get" {
    type = string
    default = ""
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

variable private_SG_tagname {
  type        = string
  default     = "vault-private-SG"
}

variable private_SG_name {
  type        = string
  default     = "vault-SG-app"
}