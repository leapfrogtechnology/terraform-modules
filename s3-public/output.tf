output "bucket_arn" {
  value = aws_s3_bucket.bucket.bucket
}

output "bucket_website_endpoint" {
  value = aws_s3_bucket.bucket.bucket_domain_name
}

