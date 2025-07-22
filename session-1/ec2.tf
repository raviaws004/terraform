resource "aws_instance" "web" {
    ami          = var.ami
    instance_type = "t3.micro"

    tags = {
        Name = var.instance_name
    }
}

