

# output "web_instance_id" {
#   value = aws_instance.web.id
# }

# output "public_ip" {
#   value = aws_instance.web.public_ip
# }
# output "private_ip" {
#   value = aws_instance.web.private_ip
# }

# output "security_group_id" {
#   value = aws_security_group.web_sg.id
# }


# output "web_instance_ids" {
#   value = aws_instance.web[*].id
#   #value = [for instance in aws_instance.web : instance.id]
# }


output "instance_info" {
  value = aws_instance.web
}