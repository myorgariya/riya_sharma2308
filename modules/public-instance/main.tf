# vault bastion instance

resource "aws_instance" "bastionvault" {
  ami            = var.ami_id2
  instance_type  = var.instance_type2
  key_name       = var.key_name
  vpc_security_group_ids = [var.security_bastion_id]
  subnet_id      = var.public_subnet_id
  tags = {
    Name = var.instance_tagname1
  }
}