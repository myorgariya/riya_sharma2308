# Vault private instance

resource "aws_instance" "privatesvault" {
  ami            = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  vpc_security_group_ids = [var.security_private_id]
  count = length(var.private_subnet_id)
  subnet_id      = var.private_subnet_id[count.index]
  tags = {
    Name = "${var.instance_tagname2}-${count.index+1}"
  }
}
