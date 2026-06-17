resource "aws_key_pair" "keys" {
  key_name   = "ec2_key"
  public_key = file("ec2_key.pub")
}

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my-group2" {
  name        = "aws-ec2-sg"
  vpc_id      = aws_default_vpc.default.id
  description = "This is a default security-group for EC2-instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my-instance" {
  key_name               = aws_key_pair.keys.key_name
  vpc_security_group_ids = [aws_security_group.my-group2.id]
  instance_type          = "t3.micro"
  ami                    = var.ec2_ami_id

  root_block_device {
    volume_size = var.aws_root_storage_size
    volume_type = "gp3"
  }

  tags = {
    Name = "demo-ec2-${random_id.random_id.hex}"
  }
}