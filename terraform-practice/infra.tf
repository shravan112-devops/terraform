#this will create a s3 bucket 
resource "aws_s3_bucket" "my-bucket" {
        bucket = "terraform-bucket-06"

}

#this will create a ec2 instance
resource "aws_instance" "my-instance"{
        ami = "ami-09040d770ffe2224f"
        instance_type = "t2.micro"
        tags = {
                Name = "terraform-instance"

}

}