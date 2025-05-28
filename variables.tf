variable "aws_region" {
  description = "AWS region to deploy"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "tc-k8s-cluster"
}

variable "node_group_name" {
  description = "Name of the default node group"
  type        = string
  default     = "tc-node-group"
}

variable "node_instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
  default     = "t3.small"
}

variable "desired_capacity" {
  description = "Initial number of nodes"
  type        = number
  default     = 1
}

variable "min_capacity" {
  description = "Minimum nodes"
  type        = number
  default     = 1
}

variable "max_capacity" {
  description = "Maximum nodes"
  type        = number
  default     = 3
}
