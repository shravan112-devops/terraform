terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
}
    backend "s3" {
        bucket = "terraform-remote-bucket-batch"
        key = "terraform.tfstate"
        region = "us-east-2"
        dynamodb_table = "remote-dynamodb-table"

  }

}
provider "aws" {
 region = "us-east-2"
}