provider "aws" {
  region = "ap-south-1"
}

provider "aws" {
  alias  = "syg"
  region = "ap-southeast-1"
}