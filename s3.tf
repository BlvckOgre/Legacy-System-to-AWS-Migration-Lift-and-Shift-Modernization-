resource "aws_s3_bucket" "app_bucket" {
  bucket = "${var.project_name}-bucket"
  force_destroy = true

  tags = {
    Name = "${var.project_name}-bucket"
    Environment = var.environment
  }
}

output "s3_bucket_name" {
  value = aws_s3_bucket.app_bucket.bucket
}
