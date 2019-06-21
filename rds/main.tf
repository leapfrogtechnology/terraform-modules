resource "aws_security_group" "rds" {
  name        = var.rds_security_group_name
  description = var.rds_security_group_description
  vpc_id      = var.vpc_id
  tags        = var.tags
  ingress {
    protocol    = "tcp"
    from_port   = var.rds_port
    to_port     = var.rds_port
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "default" {
  name       = var.aws_db_subnet_group_name
  subnet_ids = var.subnet_ids
  tags = var.tags
}

resource "aws_db_instance" "default" {
  identifier           = var.rds_instance_identifier
  allocated_storage    = var.rds_allocated_storage
  storage_type         = var.rds_storage_type
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  port                 = var.rds_port
  name                 = var.rds_db_name
  username             = var.rds_db_username
  password             = var.rds_db_password
  parameter_group_name = var.rds_parameter_group_name
  db_subnet_group_name      = aws_db_subnet_group.default.id
  vpc_security_group_ids    = [aws_security_group.rds.id]
  skip_final_snapshot       = var.rds_skip_final_snapshot
  final_snapshot_identifier = var.rds_final_snapshot_identifier
  tags = var.tags
}

