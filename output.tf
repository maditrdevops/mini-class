output "public_ip" {
  value = aws_instance.server.public_ip
}

output "availability_zone" {
  value = aws_instance.server.availability_zone
}

output "ssh" {
  value = "ssh -i today-session.pem ec2-user@${aws_instance.server.public_ip}"
}