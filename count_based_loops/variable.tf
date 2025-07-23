variable "ami" {
    type = string
    default = "ami-09c813fb71547fc4f"
}
variable "instance_name" {
    type = string
    default = "web-server"

}

variable "instance_names" {
    type = list
    default = ["web", "mongodb", "redis", "mysql", "catalogue", "user", "payment", "cart", "shipping", "rabbitmq", "dispatch"]
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "sg_name" {
    type = string
    default = "web_sg"
}

variable "from_port" {
    type = number
    default = 443
}

variable "ingress_from_port" {
    type = number
    default = 80
}

variable "ingress_to_port" {
    type = number
    default = 80
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
    
    
}

variable "domain_name" {
    type = string
    default = "ravisripada.fun"
}

