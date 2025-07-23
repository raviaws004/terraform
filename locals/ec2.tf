resource "aws_instance" "web" {
    ami          = var.ami_id
    instance_type = local.instance_type

    tags = {
        Name = local.instance_name
    }
}

