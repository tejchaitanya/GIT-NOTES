resource "aws_volume_attachment" "vol1-attachment" {
  device_name = "/dev/sdb"
  volume_id   = aws_ebs_volume.vol1.id
  instance_id = aws_instance.os1.id
}
