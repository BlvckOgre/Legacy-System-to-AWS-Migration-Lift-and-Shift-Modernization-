variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ec2_ami" {
  description = "AMI ID for EC2"
  default     = "ami-0c02fb55956c7d316" # Ubuntu 22.04 (us-east-1)
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of your existing EC2 key pair"
}

variable "db_name" {
  description = "Name of the RDS database"
}

variable "db_user" {
  description = "RDS master username"
}

variable "db_password" {
  description = "RDS master password"
  sensitive   = true
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones to deploy resources across"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "project_name" {
  default = "legacy-webapp"
}

variable "environment" {
  default = "dev"
}
