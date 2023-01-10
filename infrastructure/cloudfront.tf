resource "aws_cloudfront_origin_access_identity" "originAccessIdentity" {}

resource "aws_cloudfront_distribution" "frontendDistribution" {
  aliases = [var.frontendDomain]

  custom_error_response {
    error_code         = 403
    response_code      = 200
    response_page_path = "/index.html"
  }

  custom_error_response {
    error_code         = 404
    response_code      = 200
    response_page_path = "/index.html"
  }

  default_cache_behavior {
    allowed_methods        = ["HEAD", "GET", "OPTIONS"]
    cached_methods         = ["HEAD", "GET", "OPTIONS"]
    cache_policy_id        = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    compress               = true
    target_origin_id       = "s3"
    viewer_protocol_policy = "redirect-to-https"
  }

  default_root_object = "index.html"
  enabled             = true
  is_ipv6_enabled     = true

  origin {
    domain_name = "${var.frontendDomain}.s3.${aws_s3_bucket.frontendBucket.region}.amazonaws.com"
    origin_id   = "s3"
    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.originAccessIdentity.cloudfront_access_identity_path
    }
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn      = aws_acm_certificate.cert.arn
    minimum_protocol_version = "TLSv1.2_2021"
    ssl_support_method       = "sni-only"
  }
}

resource "aws_route53_record" "routeARecord" {
  name    = var.frontendDomain
  type    = "A"
  zone_id = var.zoneId

  alias {
    evaluate_target_health = true
    name                   = aws_cloudfront_distribution.frontendDistribution.domain_name
    zone_id                = aws_cloudfront_distribution.frontendDistribution.hosted_zone_id
  }
}

resource "aws_route53_record" "routeAAAARecord" {
  name    = var.frontendDomain
  type    = "AAAA"
  zone_id = var.zoneId

  alias {
    evaluate_target_health = true
    name                   = aws_cloudfront_distribution.frontendDistribution.domain_name
    zone_id                = aws_cloudfront_distribution.frontendDistribution.hosted_zone_id
  }
}
