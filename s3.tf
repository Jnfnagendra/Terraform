resource "aws_s3_bucket" "singapore_bucket" {

    bucket = var.bucket_name
    tags = {
      Name          = "My Bucket"
      Environment   = "Dev"
    }

}