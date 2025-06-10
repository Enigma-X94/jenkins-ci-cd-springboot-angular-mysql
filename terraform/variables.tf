variable "aws_region" {
  default = "us-east-2"
}

variable "project_name" {
  description = "Name of your project used for tagging"
  default     = "employeeapp"
}

variable "ssh_key_name" {
  description = "SSH key for EKS node access"
  type        = string
}

variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}