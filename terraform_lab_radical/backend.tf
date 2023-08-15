terraform {
  backend "s3" {
    bucket         = "demo-00000011"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-south-1"
  }
}