resource "aws_instance" "server" {
  instance_type = "t2.micro"
  ami           = "ami-0440d3b780d96b29d"
  tags = {
    Name   = "mini-class"
    env    = "DevOps-class"
    author = "Devops-study-group"
  }
  key_name        = "DevOps-mini"
  security_groups = ["class-security"]
}

resource "aws_ebs_volume" "DevOps_volume" {
  availability_zone = aws_instance.server.availability_zone
  size              = 10
}

resource "aws_volume_attachment" "DevOps_volume_attachenment" {
  device_name = "/dev/sdh"
  instance_id = aws_instance.server.id
  volume_id   = aws_ebs_volume.DevOps_volume.id

}