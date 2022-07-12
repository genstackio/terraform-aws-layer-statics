# Managed origin request policy
data "aws_cloudfront_origin_request_policy" "managed_cors_s3_origin" {
  name = "Managed-CORS-S3Origin"
}
# Managed origin request policy
data "aws_cloudfront_response_headers_policy" "managed_cors_with_preflight_and_securityheaders" {
  name = "Managed-CORS-with-preflight-and-SecurityHeadersPolicy"
}