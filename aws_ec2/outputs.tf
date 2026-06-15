output "instance_public_dns" {
  value       = aws_instance.my-instance.public_dns
}

output "instance_private_dns" {
  value       = aws_instance.my-instance.private_dns
}

output "instance_public_ip" {
  value       = aws_instance.my-instance.public_ip
}

output "instance_private_ip" {
  value       = aws_instance.my-instance.private_ip
}