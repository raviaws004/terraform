resource "aws_instance" "web" {
    ami          = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.web_sg.id]

    tags = {
        Name = "provisioner-web"
    }

    provisioner "local-exec" {
        command = "echo this will run after the instance is created"
    }

    provisioner "local-exec" {
        command = "echo  ${self.public_ip} > inventory"  #self = aws_instance.web
    }

    provisioner "local-exec" {
        command = "echo  ${self.private_ip} >> inventory"
      
    }

    provisioner "local-exec" {
        command = "ansible -playbook -i inventory web.yml"
        on_failure = continue
    }

    provisioner "local-exec" {
        command = "echo this run after the instance is destroyed"
        when   = destroy
    }

    connection {
        type       = "ssh"
        user       = "ec2-user"
        password =  "DevOps321"
        host       = self.public_ip
    }

    provisioner "remote-exec" {
        inline = [
            "echo 'this is remote-exec provisioner' >> /tmp/remote.txt",
            "sudo yum install nginx -y",
            "sudo systemctl enable nginx",
            "sudo systemctl start nginx",
        ]
    }


}


resource "aws_security_group" "web_sg" {
    name        = "web_sg"
    description = "Security group for web instances"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        }

    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }     
    
    tags = {
        Name = "web_sg" 
    }
    }


