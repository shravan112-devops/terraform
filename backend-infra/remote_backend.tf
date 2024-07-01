terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }
}

provider "aws" {
 region = "us-east-2"
}


resource "aws_s3_bucket" "remote-bucket"{
        bucket = "terraform-remote-bucket-batch"
}

resource "aws_dynamodb_table" "remote-dynamodb-table" {
        name = "remote-dynamodb-table"
        billing_mode   = "PAY_PER_REQUEST"
        hash_key       = "LockID"

        attribute {
                name = "LockID"
                type = "S"
  }

         tags = {
    Name        = "dynamodb-table-1"

  }
}