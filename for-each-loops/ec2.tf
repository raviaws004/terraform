resource "aws_instance" "web" {
    for_each = var.instance_names
    ami          = var.ami
    #instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : var.instance_type        
    instance_type = each.value
    #vpc_security_group_ids = [aws_security_group.web_sg.id] 

    tags = {
        Name = each.key
        #Name = var.instance_names[count.index]
    }
}

# resource "aws_security_group" "web_sg" {
#     name       = var.sg_name
#     description = "Security group for web instances"

#     ingress {
#         from_port   = var.ingress_from_port
#         to_port     = var.ingress_to_port
#         protocol    = "tcp"
#         cidr_blocks = var.cidr_blocks
#     }

#     egress {
#         from_port   = 0
#         to_port     = 0
#         protocol    = "-1"
#         cidr_blocks = var.cidr_blocks    
#     }

# }

resource "aws_route53_record" "www" {   
    for_each = aws_instance.web
    zone_id = var.zone_id
    name   = "${each.key}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}

