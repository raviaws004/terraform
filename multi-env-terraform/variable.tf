variable "instance_names" {
    type = map(string)
    default = {
        web        = "t3.micro"
        mongodb    = "t3.small"
        redis      = "t3.micro"
        mysql      = "t3.small"
        catalogue  = "t3.micro"
        cart       = "t3.micro"
        user       = "t3.micro"
        payment    = "t3.micro"
        shipping   = "t3.small"
        rabbitmq   = "t3.micro"
        dispatch   = "t3.micro"
    }   

}


variable "domain_name" {
    type = string
    default = "ravisripada.fun"
}

variable "zone_id" {
    type = string
    default = "Z06436571X1B9TSZB48VA"
}

