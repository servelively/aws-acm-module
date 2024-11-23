
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
