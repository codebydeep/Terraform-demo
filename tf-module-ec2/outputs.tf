output "vpc_id" {
  description = "ID of the VPC used for the EC2 instance"
  value       = aws_vpc.this.id
}

output "subnet_id" {
  description = "ID of the public subnet used for the EC2 instance"
  value       = aws_subnet.public.id
}

output "key_name" {
  description = "EC2 key pair name"
  value       = aws_key_pair.ec2_key.key_name
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = module.ec2_instance.public_dns
}

output "instance_private_dns" {
  description = "Private DNS name of the EC2 instance"
  value       = module.ec2_instance.private_dns
}

output "instance_public_ip" {
  description = "Public IPv4 address of the EC2 instance"
  value       = module.ec2_instance.public_ip
}

output "instance_private_ip" {
  description = "Private IPv4 address of the EC2 instance"
  value       = module.ec2_instance.private_ip
}
