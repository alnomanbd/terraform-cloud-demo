variable "ami" {}
variable "region" {}
variable "instance_type" {}
variable "access_key" {}
variable "secret_key" {}
variable "subnet_id" {}

resource "aws_instance" "terraform-cloud-demo" {
    ami           = var.ami
    instance_type = var.instance_type
    subnet_id     = var.subnet_id
    tags = {
        Name = "Terraform Cloud Demo-2"
    }
}