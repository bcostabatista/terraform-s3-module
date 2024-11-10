module "s3_bucket" {
    source = "./modules/s3"
    bucket_name = var.bucket_name
    enable_versioning = true
    tags = {
        Name        = "${var.bucket_name}-tag"
        Environment = "Dev"
  }
}

output "bucket_name" {
  description = "The name of the S3 bucket created by the s3_bucket module"
  value       = module.s3_bucket.bucket_name
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket created by the s3_bucket module"
  value       = module.s3_bucket.bucket_arn
}
