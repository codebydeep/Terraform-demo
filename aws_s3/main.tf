resource "aws_s3_bucket" "bucket-example" {
  bucket = "demo-example-${random_id.random_id.hex}"
}

resource "aws_s3_object" "example-object" {
  bucket = aws_s3_bucket.bucket-example.bucket
  source = "./my-file.txt"
  key    = "deepansh.txt"
}