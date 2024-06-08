resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  count=var.count-no
  name    = "${var.instance_name[count.index]}.${var.dns_name}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.expense[count.index].private_ip]
}