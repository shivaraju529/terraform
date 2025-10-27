resource "aws_instance" "terraform1" {
    ami = var.ami_id
    instance_type = var.instance_type
   # vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = var.ec2tags
}

resource "aws_security_group" "allow_all" {
  name   = var.sg_name

  egress {
    from_port        = var.engress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.engress_to_port
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.Portno # internet
  }

  ingress {
    from_port        = var.ingress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.ingress_to_port
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.Portno # internet
  }

  tags = {
    Name = "allow-all_siva"
  }

}