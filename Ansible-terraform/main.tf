resource "aws_instance" "managed-ansible_server" {
  ami             = "ami-0df24e148fdb9f1d8"
  instance_type   = "t2.micro"
  key_name        = "Natalierose"
  security_groups = ["default"]
  user_data = file("ansible.sh")

  tags = {
    Name = "managed-ansibleserver-terraform"
  }
}
resource "aws_instance" "Control-node-ansible_server" {
  ami             = "ami-0df24e148fdb9f1d8"
  instance_type   = "t2.micro"
  key_name        = "Natalierose"
  security_groups = ["default"]
  user_data = file("ansible.sh")

  tags = {
    Name = "Control-node-ansibleserver-terraform"
  }
}
  resource "aws_security_group" "default" {
    tags = {
    type = "terraform-security-group"
}
}
