resource "aws_instance" "mainJenkins" {  // You can edit resource name as your need
 ami = var.ami
 instance_type = var.instance_type
 key_name = "Practic"
 availability_zone = var.av_zone
 tags = var.tags
 user_data = var.user_data
}