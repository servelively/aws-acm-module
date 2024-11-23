resource "aws_acm_certificate" "cert" {
  count = var.create_acm_cert ? 1 : 0 
  domain_name       = var.acm_domain_name
  validation_method = var.acm_validation_method
  tags = var.acm_tags
  lifecycle {
    create_before_destroy = true
  }

}


resource "aws_route53_record" "record_acm" {
  for_each = {
    for dvo in (length(aws_acm_certificate.cert.*.domain_validation_options) == 0 ? [] :aws_acm_certificate.cert.*.domain_validation_options[0])  : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = var.aws_zone_id
}

resource "aws_acm_certificate_validation" "acm_validation" {
  count = var.validate_acm_cert ? 1 : 0
  certificate_arn         = aws_acm_certificate.cert.0.arn
  validation_record_fqdns = [for record in aws_route53_record.record_acm : record.fqdn]
  depends_on = [ aws_route53_record.record_acm ]
}





variable "aws_zone_id" {
    default = "" 
}

variable "validate_acm_cert" {
  default = true
}
variable "acm__create_cert" {
  default = false
}

variable "acm_domain_name" {

}

variable "create_acm_cert" {
  default = false
}

variable "acm_validation_method" {
  default = "DNS"
}
variable "acm_tags" {
  default = {"Name" = "Terraform"}
}



output "acm_arn" {
  value = aws_acm_certificate.cert.*.arn
}
output "acm_domain_name" {
  value = aws_acm_certificate.cert.*.domain_name
}

output "acm_id" {
  value = aws_acm_certificate.cert.*.id
}


output "acm_domain_validation_options" {
  value = aws_acm_certificate.cert.*.domain_validation_options
}
