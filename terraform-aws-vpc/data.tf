data "aws_availability_zones" "azs" {
    #name = "us-east-1a" #already mentioned in provider.tf 
    #all_availability_zones = true
    state = "available"
}

data "aws_vpc" "default" {
  default = true
}

data "route_table" "default" {
  vpc_id = data.aws_vpc.default.id
  filter {
    name   = "association.main"
    values = ["true"]
  } 
}