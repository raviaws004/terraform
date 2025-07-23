resource "aws_instance" "web" {
    ami          = data.aws_ami.latest_amazon_linux.id
    instance_type = "t3.micro" 

    tags = {
        Name = "web"
    }
}

