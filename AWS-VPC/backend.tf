terraform {
  backend "s3" {
    bucket         = "demo-bucket-00000011"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-south-1"
    access_key = "AKIAYELZGXZPJ"
    secret_key = "/c+QGcmI1e6AHLnjDUH"
  }
}
