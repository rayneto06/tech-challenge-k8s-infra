# terraform.tfvars
cluster_name    = "tech-challenge-cluster"
cluster_version = "1.24"
vpc_id          = "vpc-0e36a18fdd66bf347"
subnets         = [
  "subnet-0db7f2de4ee6b13f6",
  "subnet-048269541856b27c8",
  "subnet-009fbe5e851d35aa9",
  "subnet-07dd54ae61734e349",
  "subnet-0cd4c51859d5488de",
  "subnet-087bb6a60fdcafec3"
]
tags = {
  Environment = "dev"
  Project     = "tech-challenge"
}
