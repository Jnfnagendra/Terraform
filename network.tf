# Define the resources to the VPC
resource "aws_vpc" "testvpc" {
    cidr_block          = var.vpc_cidr_range
    tags                = {
        Name            = "SingaporeVPC"
    }
  
}

# Create subnet for the web1
resource "aws_subnet" "web1" {
    vpc_id              = aws_vpc.testvpc.id
    cidr_block          = var.web1_cidr_range
    availability_zone   = var.web1_az
    tags                = {
        Name            = "web1-tf"
    }
  
}

# Create subnet for the web2
resource "aws_subnet" "web2" {
    vpc_id              = aws_vpc.testvpc.id
    cidr_block          = var.web2_cidr_range
    availability_zone   = var.web2_az
    tags                = {
        Name            = "web2-tf"
    }
  
}

# Create subnet for the app1
resource "aws_subnet" "app1" {
    vpc_id              = aws_vpc.testvpc.id
    cidr_block          = var.app1_cidr_range
    availability_zone   = var.app1_az
    tags                = {
        Name            = "app1-tf"
    }
  
}

# Create subnet for the app2
resource "aws_subnet" "app2" {
    vpc_id              = aws_vpc.testvpc.id
    cidr_block          = var.app2_cidr_range
    availability_zone   = var.app2_az
    tags                = {
        Name            = "app2-tf"
    }
  
}

# Create subnet for the db1
resource "aws_subnet" "db1" {
    vpc_id              = aws_vpc.testvpc.id
    cidr_block          = var.db1_cidr_range
    availability_zone   = var.db1_az
    tags                = {
        Name            = "db1-tf"
    }
  
}

# Create subnet for the db2
resource "aws_subnet" "db2" {
    vpc_id              = aws_vpc.testvpc.id
    cidr_block          = var.db2_cidr_range
    availability_zone   = var.db2_az
    tags                = {
        Name            = "db2-tf"
    }
  
}

# Create Internet Gateway in Singapore region
resource "aws_internet_gateway" "sgw" {
    vpc_id              = aws_vpc.testvpc.id
    tags                = {
        Name            = "Main"
    }
  
}
