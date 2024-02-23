resource "aws_key_pair" "mini-class" {
  key_name   = "DevOps-mini"
  public_key = tls_private_key.DevOps-trainer.public_key_openssh
}

resource "tls_private_key" "DevOps-trainer" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "local_file" "big-move" {
  filename = "today-session.pem"
  content  = tls_private_key.DevOps-trainer.private_key_pem
}