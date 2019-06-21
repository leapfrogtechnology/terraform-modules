variable "ec2_security_group_name" {
  type = "string"
}

variable "ec2_security_group_description" {
  type = "string"
}

variable "vpc_id" {
  type = "string"
}

variable "ec2_instance_ami" {
  type = "string"
  default = "ami-024a64a6685d05041"
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

variable "tags" {
  type = "map"
  default = {
    Name = "bucket"
    Project = "test"
  }
}
