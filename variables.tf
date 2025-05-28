variable "cluster_name"    { type = string }
variable "cluster_version" { type = string }
variable "vpc_id"          { type = string }
variable "subnets"         { type = list(string) }
variable "tags"            { type = map(string) }
