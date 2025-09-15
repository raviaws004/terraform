variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "common_tags" {
    type = map(string)
    default = {} #it is optional
}

variable "vpc_tags" {
    type = map(string)
    default = {} #it is optional
}

variable "igw_tags" {
    type = map(string)
    default = {} #it is optional
}

variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "public_subnets_cidr" {
    type = list(string)
    #default = "10.1.0.0/24"
    validation {
        condition     = length(var.public_subnets_cidr) == 2
        error_message = "You must provide exactly 2 public subnet CIDRs."
    }
}

variable "public_subnets_tags" {
    type = map(string)
    default = {} #it is optional
}

variable "private_subnets_cidr" {
    type = list(string)
    #default = "10.1.0.0/24"
    validation {
        condition     = length(var.private_subnets_cidr) == 2
        error_message = "You must provide exactly 2 public subnet CIDRs."
    }
}

variable "private_subnets_tags" {
    type = map(string)
    default = {} #it is optional
}

variable "database_subnets_cidr" {
    type = list(string)
    #default = "10.1.0.0/24"
    validation {
        condition     = length(var.database_subnets_cidr) == 2
        error_message = "You must provide exactly 2 public subnet CIDRs."
    }
}

variable "database_subnets_tags" {
    type = map(string)
    default = {} #it is optional
}

variable "nat_gateway_tags" {
    type = map(string)
    default = {} #it is optional
}

variable "public_route_table_tags" {
    type = map(string)
    default = {} #it is optional
}

variable "private_route_table_tags" {
    type = map(string)
    default = {} #it is optional
}

variable "database_route_table_tags" {
    type = map(string)
    default = {} #it is optional
}   

variable "is_peering_required" {
    type = bool
    default = false
}

variable "accepter_vpc_id" {
    type = string
    default = "" #it is optional
}

variable "peering_tags" {
    type = map(string)
    default = {} #it is optional
}