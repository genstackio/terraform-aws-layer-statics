module "website" {
  source              = "genstackio/website/aws"
  version             = "0.3.4"
  name                = var.name
  bucket_name         = var.bucket_name
  zone                = var.dns_zone
  dns                 = var.dns
  error_403_page_path = "/403.html"
  error_404_page_path = "/404.html"
  geolocations        = []
  bucket_cors         = true
  cache_policy_id     = aws_cloudfront_cache_policy.cache.id
  origin_request_policy_id = data.aws_cloudfront_origin_request_policy.managed_cors_s3_origin.id
  providers           = {
    aws     = aws
    aws.acm = aws.acm
  }
}
module "website2" {
  source              = "genstackio/website/aws"
  version             = "0.3.4"
  name                = var.name2
  bucket_name         = var.bucket2_name
  zone                = var.dns2_zone
  dns                 = var.dns2
  error_403_page_path = "/403.html"
  error_404_page_path = "/404.html"
  geolocations        = []
  bucket_cors         = true
  cache_policy_id     = aws_cloudfront_cache_policy.cache.id
  origin_request_policy_id = data.aws_cloudfront_origin_request_policy.managed_cors_s3_origin.id
  providers           = {
    aws     = aws
    aws.acm = aws.acm
  }
}
module "website3" {
  source              = "genstackio/website/aws"
  version             = "0.3.4"
  name                = var.name3
  bucket_name         = var.bucket3_name
  zone                = var.dns3_zone
  dns                 = var.dns3
  geolocations        = []
  bucket_cors         = true
  cache_policy_id     = aws_cloudfront_cache_policy.cache.id
  origin_request_policy_id = data.aws_cloudfront_origin_request_policy.managed_cors_s3_origin.id
  providers           = {
    aws     = aws
    aws.acm = aws.acm
  }
}

resource "aws_cloudfront_cache_policy" "cache" {
  name        = "${var.name}-cache-policy"

  min_ttl                  = 0
  default_ttl              = 3600
  max_ttl                  = 86400

  enable_accept_encoding_brotli = true
  enable_accept_encoding_gzip   = true
  
  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }
    headers_config {
      header_behavior = "none"
    }
    query_strings_config {
      query_string_behavior = "none"
    }
  }
}