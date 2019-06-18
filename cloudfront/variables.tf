variable "bucket_name" {}

variable "tags" {
  type = "map"
  default = {
    Name = "bucket"
    Project = "test"
  }
}

variable "domain_configuration" {
  description = "Domain Configuration"
  type        = "map"
  default = {
    "root_domain" = "lftechnology.com.np"
    "domain"      = "allstardevops.lftechnology.com.np"
  }
}

variable "aws_acm_certificate_arn" {}

variable "aws_acm_certificate_validation" {}
