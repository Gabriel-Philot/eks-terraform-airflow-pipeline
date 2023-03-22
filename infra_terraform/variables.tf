variable "region" {
    description = "AWS region"
    type = string
    default = "us-east-2"
}

variable "project_name" {
    description = "project name"
    type = string
    default = "edc-m3-fuel"
}

locals {
    cluster_name = "${var.project_name}-eks"
}
