terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "oregon_server" {
  ami           = "ami-0df24e148fdb9f1d8"
  instance_type = "t2.micro"
  key_name = "Natalierose"
  user_data = file("docker.sh")
  security_groups = ["default"]
  

  tags = {
  Name = "Docker-Terraform"
  }
  }
  
resource "aws_security_group" "default" {
	tags = {
	type = "terraform-security-group"
}
}
