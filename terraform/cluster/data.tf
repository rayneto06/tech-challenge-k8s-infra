data "aws_vpc" "selected_vpc" {
  filter {
    name   = "tag:Name"
    values = ["tech-challenge-vpc"]
  }
}

data "aws_subnets" "private_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected_vpc.id]
  }

  filter {
    name   = "tag:Environment"
    values = ["private"]
  }

  depends_on = [data.aws_vpc.selected_vpc]
}

data "aws_subnet" "selected_subnets" {
  for_each = toset(data.aws_subnets.private_subnets.ids)
  id       = each.value

  depends_on = [data.aws_subnets.private_subnets]
}

data "aws_iam_role" "lab_role" {
  name = "LabRole"
}

data "aws_security_group" "rds_security_group" {
  name = "tech-challenge-rds-sg"
}