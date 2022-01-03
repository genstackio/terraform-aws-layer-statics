output "dns" {
  value = module.website.dns
}
output "dns2" {
  value = module.website2.dns
}
output "dns3" {
  value = module.website3.dns
}
output "cloudfront_id" {
  value = module.website.cloudfront_id
}
output "cloudfront_arn" {
  value = module.website.cloudfront_arn
}
output "cloudfront2_id" {
  value = module.website2.cloudfront_id
}
output "cloudfront2_arn" {
  value = module.website2.cloudfront_arn
}
output "cloudfront3_id" {
  value = module.website3.cloudfront_id
}
output "cloudfront3_arn" {
  value = module.website3.cloudfront_arn
}
output "bucket3_id" {
  value = module.website3.bucket_id
}
output "bucket3_name" {
  value = module.website3.bucket_name
}
output "bucket3_arn" {
  value = module.website3.bucket_arn
}
output "url" {
  value = "https://${module.website.dns}"
}
output "url2" {
  value = "https://${module.website2.dns}"
}
output "url3" {
  value = "https://${module.website3.dns}"
}
