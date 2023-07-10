
variable "ami_id2" {
default =  "ami-0f5ee92e2d63afc18"
}

variable "instance_type2" {
default =  "t3.medium"
}

variable "instance_tagname1" {
default =  "Bastion-1"
}


variable "public_ip_ins" {
    default = "true"
}

variable "key_name" {
    default = "tool"
}

variable "security_bastion_id" {
    default = ""
}

variable "public_subnet_id" {
     default = ""
}