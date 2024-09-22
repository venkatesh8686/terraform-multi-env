resource "aws_route53_record" "expense" {
  for_each        =  aws_instance.terraform
  zone_id         = var.hosted_id
  name            = each.key == "frontend-prod"  ? var.domain_name : "${each.key}.${var.domain_name}"
  type            = "A"
  ttl             = 1
  records         = startswith(each.key, "frontend")  ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}