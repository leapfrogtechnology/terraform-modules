resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "public-read"
  force_destroy = "true"
  tags = var.tags

  website {
    index_document = var.bucket_index_document
    error_document = var.bucket_error_document
  }

  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"AddPerm",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::${var.bucket_name}/*"]
    }
  ]
}
POLICY
}

