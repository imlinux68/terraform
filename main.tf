provider "aws" {
	access_key = "$acc_key"
	secret_key = "$sec_key"
	region     = "us-east-1"
}

resource "aws_instance" "my_ubuntu" {
	ami = "ami-005f9685cb30f234b"
	instance_type = "t2.micro"
	tags = {
		Name = "AWS-restart"
		Owner = "AWS"
		Project = "VPC PROJ"
	}
}
