terraform {
  backend "remote" {
    organization = "edgar-training"
    workspaces {
      name = "Sentinel"
    }
  }
}

provider "aws" {
  region                  = "us-east-1"
  profile                 = "clouduser"
//  shared_credentials_file = "~/.aws/credentials"
}


//data "aws_ami" "ubuntu" {
//  most_recent = true
//
//  filter {
//    name   = "name"
//    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
//  }
//
//  filter {
//    name   = "virtualization-type"
//    values = ["hvm"]
//  }
//
//  owners = ["099720109477"] # Canonical
//}


resource "aws_instance" "web" {
  ami           = "ami-0c322300a1dd5dc79"
  instance_type = "t2.micro"
//  tags = {
//    Name = "samazß"
//  }
}