module "website" {
  source              = "genstackio/website/aws"
  version             = "0.2.1"
  name                = var.name
  bucket_name         = var.bucket_name
  zone                = var.dns_zone
  dns                 = var.dns
  error_403_page_path = "/403.html"
  error_404_page_path = "/404.html"
  geolocations        = []
  bucket_cors         = true
  providers           = {
    aws     = aws
    aws.acm = aws.acm
  }
}
module "website2" {
  source              = "genstackio/website/aws"
  version             = "0.2.1"
  name                = var.name2
  bucket_name         = var.bucket2_name
  zone                = var.dns2_zone
  dns                 = var.dns2
  error_403_page_path = "/403.html"
  error_404_page_path = "/404.html"
  geolocations        = []
  bucket_cors         = true
  providers           = {
    aws     = aws
    aws.acm = aws.acm
  }
}
module "website3" {
  source              = "genstackio/website/aws"
  version             = "0.2.1"
  name                = var.name3
  bucket_name         = var.bucket3_name
  zone                = var.dns3_zone
  dns                 = var.dns3
  geolocations        = []
  bucket_cors         = true
  providers           = {
    aws     = aws
    aws.acm = aws.acm
  }
}
