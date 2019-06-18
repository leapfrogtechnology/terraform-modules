variable "bucket_name" {
  type = "string"
}

variable "tags" {
  type = "map"
  default = {
    Name = "bucket"
    Project = "test"
  }
}

variable "aws_acm_certificate_arn" {
  type = "string"
}

variable "domain_name" {
  type = "string"
}

variable "domain_aliases" {
  type = "list"
}
