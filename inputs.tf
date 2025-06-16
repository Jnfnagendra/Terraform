variable "target_region" {
    type            = string
    default         = "ap-south-1"
    description     = "region where the Infra can be created"
  
}

variable "vpc_cidr_range" {
    type            = string
    description     = "cidr range of the vpc"
  
}

variable "web1_cidr_range" {
    type        = string
    description = "cidr range of the web1 subnet"
  
}

variable "web2_cidr_range" {
    type        = string
    description = "cidr range of the web2 subnet"
  
}

variable "web1_az" {
    type        = string
    description = "web1 az"
  
}

variable "web2_az" {
    type        = string
    description = "web2 availability zone"
  
}

variable "db1_cidr_range" {
    type        = string
    description = "cidr range of the db1 subnet"
  
}

variable "db2_cidr_range" {
    type        = string
    description = "cidr range of the db2 subnet"
  
}

variable "db1_az" {
    type        = string
    description = "db1 az"
  
}

variable "db2_az" {
    type        = string
    description = "db2 availability zone"
  
}