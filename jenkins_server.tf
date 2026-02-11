resource "aws_instance" "jenkins" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = "terrafrom"
  security_groups = [aws_security_group.allow_all_tcp.name]
  user_data       = file("jenkins.sh")
  tags = {
    Name      = "Jenkins"
    Terraform = "Yes"
  }
}