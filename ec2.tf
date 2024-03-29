# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "ap-southeast-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  security_group_ids = ["sg-011846390fbbd7b5d"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "JenkinsPipelineTesting"
  }
}

resource "local_file" "startWeb" {
   content = "aws ec2 start ${aws_instance.web.id}"
   filename = "${path.module}/startEC2Instance.sh"
}
resource "local_file" "stopWeb" {
   content = "aws ec2 stop ${aws_instance.web.id}"
   filename = "${path.module}/stpopEC2Instance.sh"
}

# terraform {
#   backend "s3" {
#     bucket = "jh-jenkins-configuration-20190819"
#     key    = "terraform-backend/ec2WebTest"
#     region = "ap-southeast-1"
#   }
# }