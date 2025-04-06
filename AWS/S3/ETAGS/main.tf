terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

resource "aws_s3_bucket" "default" {
  bucket = "my-unique-bucket-name-123456" # Must be globally unique
}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.default.id
  key    = "myfile.txt"
  source = "myfile.txt"

  depends_on = [aws_s3_bucket.default]

  etag = filemd5("myfile.txt")
}
