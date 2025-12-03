output "ec2_public_ip" {
  description = "Public IP of deployed EC2"
  value       = aws_instance.server.public_ip
}
