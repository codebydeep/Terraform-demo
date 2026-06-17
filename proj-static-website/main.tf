resource "aws_s3_bucket" "example-bucket" {
  bucket = "my-bucket-${random_id.random_id.hex}"
}

resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.example-bucket.bucket
  source       = "./index.html"
  key          = "index.html"
  content_type = "text/html"
}
resource "aws_s3_object" "style_css" {
  bucket       = aws_s3_bucket.example-bucket.bucket
  source       = "./style.css"
  key          = "style.css"
  content_type = "text/css"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example-bucket.bucket

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.example-bucket.bucket
  policy = jsonencode(
    {
      "Version" = "2012-10-17",
      "Statement" = [
        {
          "Sid"       = "PublicReadGetObject",
          "Effect"    = "Allow",
          "Principal" = "*",
          "Action"    = "s3:GetObject",
          "Resource" = [
            "arn:aws:s3:::${aws_s3_bucket.example-bucket.bucket}/*"
          ]
        }
      ]
    }
  )
}

resource "aws_s3_bucket_website_configuration" "mywebapp" {
  bucket = aws_s3_bucket.example-bucket.bucket

  index_document {
    suffix = "index.html"
  }

  #   error_document {
  #     key = "error.html"
  #   }

  #   routing_rule {
  #     condition {
  #       key_prefix_equals = "docs/"
  #     }
  #     redirect {
  #       replace_key_prefix_with = "documents/"
  #     }
  #   }
}