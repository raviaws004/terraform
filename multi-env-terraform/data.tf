data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  } 
    filter {
        name   = "architecture"
        values = ["x86_64"]
    }   
    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }
    
}