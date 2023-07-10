# Public SG

resource "aws_security_group" "bastion-sg" {
  name        = var.public_SG_name
  description = "Allow inbound traffic to bastion"
  vpc_id      = var.vpc_id_get

  dynamic "ingress" {
    for_each = [22, 80, 443]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = var.SG_protocol
      cidr_blocks = [ var.SG_cidr_ingress ]

    }
  }
   egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [ var.SG_cidr_egress ]
  }
 
  tags = {
    Name = var.public_SG_tagname
  }
}
