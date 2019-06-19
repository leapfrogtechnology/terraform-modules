resource "aws_security_group" "fargate_tasks" {
  name        = "sg-" + var.faragte_cluster_name
  description = "allow inbound access from the ALB only"
  vpc_id = var.vpc_id

  ingress {
    protocol        = "tcp"
    from_port       = var.fargate_container_port
    to_port         = var.fargate_container_port
    security_groups = [var.fargate_alb_security_group_id]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_ecs_cluster" "main" {
  name = var.faragte_cluster_name
}

resource "aws_ecs_task_definition" "app" {
  container_definitions = var.fargate_container_definitions
  family = var.faragte_app_name
  network_mode = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu = var.fargate_cpu
  memory = var.fargate_memory
}

resource "aws_ecs_service" "main" {
  name            = var.faragte_app_name
  cluster         = aws_ecs_cluster.main.id

  task_definition = aws_ecs_task_definition.app.arn
  desired_count   = var.fargate_app_count
  launch_type     = "FARGATE"

  network_configuration {
    security_groups  = [aws_security_group.fargate_tasks.id]
    subnets = var.fargate_subnets
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = var.fargate_alb_target_group_id
    container_name   = var.fargate_container_name
    container_port   = var.fargate_container_port
  }
}
