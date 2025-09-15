variable "ami" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"

}

variable "tags" {
    default = {}
    type = map
}