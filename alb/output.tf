output "alb_arn" {
  value = aws_alb.main.arn
}

output "alb_dns_name" {
  value = aws_alb.main.dns_name
}
