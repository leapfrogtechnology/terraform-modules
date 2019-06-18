variable "public_subnets" {
  type = "list"
}

variable "vpc_id" {
  type = "string"
}

variable "health_check_path" {
  type = "string"
  default = "/"
}

variable "alb_security_group_name" {
  type = "string"
  default = "cb-load-balancer-security-group"
}

variable "alb_security_group_description" {
  type = "string"
  default = "controls access to the ALB"
}

variable "alb_name" {
  type = "string"
  default = "cb-load-balancer"
}

variable "alb_target_name" {
  type = "string"
  default = "cb-target-group"
}

variable "tags" {
  type = "map"
  default = {
    Name = "alb"
    Project = "test"
  }
}

variable "aws_acm_certificate_arn" {
  type = "string"
}
