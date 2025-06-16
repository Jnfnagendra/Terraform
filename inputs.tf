variable "target_region" {
    type            = string
    default         = "ap-south-1"
    description     = "region where the Infra can be created"
  
}

variable "vpc_cidr_range" {
    type            = string
    default         = "192.168.0.0/16"
    description     = "cidr range of the vpc"
  
}