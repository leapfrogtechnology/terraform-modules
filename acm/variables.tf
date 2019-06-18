variable "domain_name" {
  type = "string"
}

variable "alternate_domain_names" {
  type = "list"
  default = []
}

variable "route53_root_domain" {
  type = "string"
}

variable "tags" {
  type = "map"
  default = {
    Name = "Default Certificate"
    Project = "Default"
  }
}
