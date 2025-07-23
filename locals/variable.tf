variable "isProd" {
    type = bool
    default = false

}

variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "zone_id" {
    type = string
    default = "Z06436571X1B9TSZB48VA"
}   

variable "domain_name" {
    type = string
    default = "ravisripada.fun"
}   