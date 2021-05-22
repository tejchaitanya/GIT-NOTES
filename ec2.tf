resource "aws_instance" "os1" {
  ami             = "ami-03d64741867e7bb94"
  instance_type   = "t2.micro"
  key_name        = "sai"
  security_groups = [ aws_security_group.allow_tls.name ]

  tags = {
    Name = "os1-terraform"
  }

}
