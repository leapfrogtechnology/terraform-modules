variable "rds_security_group_name" {
  type = "string"
  default = "rds-security-group"
}

variable "rds_security_group_description" {
  type = "string"
  default = "controls access to the RDS"
}

variable "vpc_id" {
  type = "string"
}

variable "subnet_ids" {
  type = "list"
}

variable "aws_db_subnet_group_name" {
  type = "string"
  default = "rds-subnet-group"
}

variable "rds_instance_identifier" {
  type = "string"
}

variable "rds_allocated_storage" {
  type = "string"
  default = 20
}

variable "rds_storage_type" {
  type = "string"
  default = "gp2"
}

variable "rds_engine" {
  type = "string"
  default = "postgres"
}

variable "rds_engine_version" {
  type = "string"
  default = "10"
}

variable "rds_instance_class" {
  type = "string"
  default = "db.t2.micro"
}

variable "rds_db_name" {
  type = "string"
}

variable "rds_db_username" {
  type = "string"
}

variable "rds_db_password" {
  type = "string"
}

variable "rds_parameter_group_name" {
  type = "string"
  default = "default.postgres10"
}

variable "rds_skip_final_snapshot" {
  type = "string"
  default = true
}

variable "rds_final_snapshot_identifier" {
  type = "string"
  default = "rds-final-snapshot-identifier"
}

variable "rds_port" {
  type = "string"
  default = "5432"
}

variable "tags" {
  type = "map"
  default = {
    Name = "rds"
    Project = "test"
  }
}
