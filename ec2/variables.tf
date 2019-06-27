variable "ec2_security_group_name" {
  type = "string"
}

variable "ec2_security_group_description" {
  type = "string"
}

variable "vpc_id" {
  type = "string"
}

variable "ec2_instance_type" {
  type = "string"
  default = "t2.micro"
}

variable "public_subnet_id" {
  type = "string"
}

variable "ec2_key_name" {
  type = "string"
}

variable "ec2_cidr_blocks" {
  type = "list"
  default = [
    "202.70.67.113/32",
    "182.93.83.51/32",
    "202.166.206.8/32",
    "202.79.34.78/32"
  ]
}

variable "image_filter_values" {
  type = "list"
  default = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
}

variable "virtualization_filter_values" {
  type = "list"
  default = ["hvm"]
}

variable "image_owners" {
  type = "list"
  default = ["099720109477"]
}

variable "tags" {
  type = "map"
  default = {
    Name = "bucket"
    Project = "test"
  }
}
