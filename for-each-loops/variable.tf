variable "ami" {
    type = string
    default = "ami-09c813fb71547fc4f"
}
variable "instance_name" {
    type = string
    default = "web-server"

}

variable "instance_names" {
    type = map
    default = {
        web = "t3.micro"
        mongodb = "t3.small"
        redis = "t3.micro"
        mysql = "t3.small"
        catalogue = "t3.micro"
        cart = "t3.micro"
        user = "t3.micro"
        payment = "t3.micro"
        shipping = "t3.small"
        rabbitmq = "t3.micro"
        dispatch = "t3.micro"
    }
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

# variable "sg_name" {
#     type = string
#     default = "web_sg"
# }

# variable "from_port" {
#     type = number
#     default = 443
# }

# variable "ingress_from_port" {
#     type = number
#     default = 80
# }

# variable "ingress_to_port" {
#     type = number
#     default = 80
# }

# variable "cidr_blocks" {
#     type = list
#     default = ["0.0.0.0/0"]
    
    
# }

variable "domain_name" {
    type = string
    default = "ravisripada.fun"
}

variable "zone_id" {
    type = string
    default = "Z06436571X1B9TSZB48VA"
}

