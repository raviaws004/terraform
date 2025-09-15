resource "aws_instance" "web" {
    for_each = var.instance_names
    ami          = data.aws_ami.latest_amazon_linux.id
    instance_type = each.value

    tags = {
        Name = each.key
        #Name = var.instance_names[count.index]
    }
}

resource "aws_route53_record" "www" {   
    for_each = aws_instance.web
    zone_id = var.zone_id
    name   = "${each.key}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [startswith(each.key, "web") ? each.value.public_ip : each.value.private_ip]

}

