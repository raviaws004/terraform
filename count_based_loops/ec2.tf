resource "aws_instance" "web" {
    count         = length(var.instance_names)    
    ami          = var.ami
    instance_type = (contains(["mongodb", "mysql", "shipping"], var.instance_names[count.index]) ? "t3.small" : var.instance_type)
    vpc_security_group_ids = [aws_security_group.web_sg.id] 

    tags = {
        Name = var.instance_names[count.index]
    }
}

resource "aws_security_group" "web_sg" {
    name       = var.sg_name
    description = "Security group for web instances"

    ingress {
        from_port   = var.ingress_from_port
        to_port     = var.ingress_to_port
        protocol    = "tcp"
        cidr_blocks = var.cidr_blocks
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = var.cidr_blocks    
    }

}

resource "aws_route53_record" "www" {   
  count   = length(var.instance_names)
  zone_id = "Z06436571X1B9TSZB48VA"
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = contains(["web"], var.instance_names[count.index]) ? [aws_instance.web[count.index].public_ip] : [aws_instance.web[count.index].private_ip]
}