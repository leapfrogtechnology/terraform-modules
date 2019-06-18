variable "public_subnets" {
  type = "list"
}

variable "vpc_id" {}

variable "health_check_path" {
  default = "/"
}

variable "alb_security_group_name" {
  default = "cb-load-balancer-security-group"
}

variable "alb_security_group_description" {
  default = "controls access to the ALB"
}

variable "alb_name" {
  default = "cb-load-balancer"
}

variable "alb_target_name" {
  default = "cb-target-group"
}

variable "tags" {
  type = "map"
  default = {
    Name = "alb"
    Project = "test"
  }
}
