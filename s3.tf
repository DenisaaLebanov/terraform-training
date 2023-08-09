    resource "aws_s3_bucket" "tt-bucket" {
      bucket = var.bucket-variable
    }

    resource "aws_s3_object" "object-bucket" {
        key = each.key
        bucket = aws_s3_bucket.tt-bucket.id
        source = "${path.module}/${each.value}"

        for_each = var.file_assets
    }