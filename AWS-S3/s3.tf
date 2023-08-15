resource "aws_s3_bucket" "satyam" {
  bucket = "terraform-sample-s3bucket001"
  acl    = "public-read"

  tags = {
    Name        = "awsclass-aug2022"
    Environment = "dev"
  }  

  versioning {
    enabled = true
  }


  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "arn:aws:kms:ap-south-1:559220132560:key/55b2de9a-1453-446e-a469-d2655f643a6b"
        sse_algorithm     = "aws:kms"
      }
    }
  }

   lifecycle_rule {
    enabled = true

    transition {
      days = 50
      storage_class = "STANDARD_IA"
    }

    transition {
      days = 100
      storage_class = "GLACIER"
    }

        expiration {
      days = 500
    }
  }    

}