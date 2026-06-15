variable "aws_root_storage_size" {
  description = "Root volume size in GB"
  type        = number
  default     = 15
}

variable "aws_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ec2_ami_id" {
  description = "AMI id for the EC2 instance"
  default     = "ami-0aba19e56f3eaec05"
  type        = string
}