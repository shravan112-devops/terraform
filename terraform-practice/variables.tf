variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-2"
}

variable "instance_type" {
  description = "Type of instance to deploy"
  type        = string
  default     = "t2.micro"
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {
        "name" = "Shravan EC2"
  }
}