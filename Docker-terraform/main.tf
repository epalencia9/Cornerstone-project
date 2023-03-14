resource "aws_instance" "oregon_server" {
  ami           = "ami-0df24e148fdb9f1d8"
  instance_type = "t2.micro"
  key_name = "Natalierose"
  user_data = file("docker.sh")
  security_groups = ["default"]
  

  tags = {
  Name = "Docker-terraform"
  }
  }
  
resource "aws_security_group" "default" {
	tags = {
	type = "terraform-security-group"
}
}
