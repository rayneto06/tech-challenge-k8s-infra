terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "19.17.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.27"

  node_groups = {
    default = {
      name             = var.node_group_name
      desired_capacity = var.desired_capacity
      min_capacity     = var.min_capacity
      max_capacity     = var.max_capacity
      instance_type    = var.node_instance_type
    }
  }
}
