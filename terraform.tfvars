vpc_cidr_block = "17.0.0.0/16"

vpc_name = "VaultVPC"

vpc_enable_dns_support = true

vpc_enable_dns_hostnames = true

vpc_instance_tenancy = "default"

#=============VARiABLES for PUBLIC SUBNET========================

public_subnet_cidr= "17.0.6.0/24"

public_subnet_zone= "ap-south-1a" 

public_subnet_name= "vault-public-subnet" 

#======== Internet Gateway ===========

igw_name="vault-IGW"

private_subnet_cidr= ["17.0.9.0/24", "17.0.4.0/24"]

private_subnet_zone= ["ap-south-1a", "ap-south-1b"]

nat_name= "vault-NAT"

public_route_destination= "0.0.0.0/0"

public_route_name= "vault-public-route"

private_route_destination= "0.0.0.0/0"

private_route_name= "vault-private-route"

public_SG_name= "vault-public-SG"

SG_protocol= "tcp"

SG_cidr_ingress= "0.0.0.0/0"

SG_cidr_egress= "0.0.0.0/0" 

public_SG_tagname= "vault-private-SG"

private_SG_name= "vault-SG-app"

ami_id= "ami-0f5ee92e2d63afc18"

instance_type= "t3.medium"

key_name= "tool"

instance_tagname2= "vault_app"

ami_id2= "ami-0f5ee92e2d63afc18"

instance_type2= "t3.medium"

instance_tagname1= "Bastion-1"

public_ip_ins= "true"

