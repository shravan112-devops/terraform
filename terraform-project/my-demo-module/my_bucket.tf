resource "aws_s3_bucket" "my-bucket" {
        bucket = "${var.env}-my-demo-bucket"

}