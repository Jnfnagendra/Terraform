variable "target_region" {
  type = string
  description = "Region where we want to provision the Infra"
}

variable "vpc_cidr_range" {
    type = string
    description = "CIDR range for the VPC"
  
}

variable "web1_cidr_range" {
    type = string
    description = "CIDR range for the web1 subnet"
  
}

variable "web2_cidr_range" {
    type = string
    description = "CIDR range for the web2 subnet"
  
}

variable "web1_az" {
    type = string
    description = "web1 avialabilty zone"
  
}

variable "web2_az" {
    type = string
    description = "web2 avialabilty zone"
  
}

variable "app1_cidr_range" {
    type = string
    description = "CIDR range for the app1 subnet"
  
}

variable "app2_cidr_range" {
    type = string
    description = "CIDR range for the app2 subnet"
  
}

variable "app1_az" {
    type = string
    description = "app1 avialabilty zone"
  
}

variable "app2_az" {
    type = string
    description = "app2 avialabilty zone"
  
}

variable "db1_cidr_range" {
    type = string
    description = "CIDR range for the db1 subnet"
  
}

variable "db2_cidr_range" {
    type = string
    description = "CIDR range for the db2 subnet"
  
}

variable "db1_az" {
    type = string
    description = "db1 avialabilty zone"
  
}

variable "db2_az" {
    type = string
    description = "db2 avialabilty zone"
  
}

variable "bucket_name" {
    type = string
    description = "S3 bucket hosted on singapore region"
  
}

variable "internet_gateway" {
    type = string
    description = "Internet Gateway on Singapore VPC"
  
}