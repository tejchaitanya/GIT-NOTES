resource "aws_ebs_volume" "vol1" {
  availability_zone = aws_instance.os1.availability_zone
  size              = 10

  tags = {
    Name = "os1-volume"
  }
}
