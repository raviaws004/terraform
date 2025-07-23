# output "ami_id" {
#     value = data.aws_ami.latest_amazon_linux.id
# }   

output "aws_instance_ids" {
    value = data.aws_ami.latest_amazon_linux.id
}

output "aws_vpc_info" {
    value = data.aws_vpc.default
}   