data "aws_iam_policy_document" "s3PolicyDocument" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.frontendBucket.arn}/*"]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.originAccessIdentity.iam_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "s3Policy" {
  bucket = aws_s3_bucket.frontendBucket.id
  policy = data.aws_iam_policy_document.s3PolicyDocument.json
}

resource "aws_s3_bucket" "frontendBucket" {
  bucket        = var.frontendDomain
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "blockPublicAccess" {
  bucket = aws_s3_bucket.frontendBucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
