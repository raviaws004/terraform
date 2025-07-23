locals {
    instance_name = "web"
    instance_type = var.isProd ? "t3.small" : "t3.micro"
}
