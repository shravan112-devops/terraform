resource "aws_instance" "my-demo-instance" {
        ami = var.ami
        instance_type = var.instance-type 
        tags = {
                Name = "${var.env}-${var.instance-name}"

}
}