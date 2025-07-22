variable "ami" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_name" {
    type = string
    default = "web-server"

}

variable "instance_type" {
    type = string
    default = "t3.micro"
}