# Lets try to define the resources to the VPC

resource "aws_vpc" "testvpc" {
    cidr_block              = var.vpc_cidr_range

    tags                    = {
        "Name"              = "HTCTestVPC"
    }
}

# Create a Subnet called Web1 

resource "aws_subnet" "Web1" {
    vpc_id                  = aws_vpc.testvpc.id
    cidr_block              = "192.168.0.0/24"
    availability_zone       = "ap-south-1a"

    tags                    = {
        Name                = "web1-tf"
    }  
}

# Create a Subnet called Web02

resource "aws_subnet" "Web02" {
    vpc_id                  = aws_vpc.testvpc.id
    cidr_block              = "192.168.1.0/24"
    availability_zone       = "ap-south-1b"

    tags                    = {
        Name                = "web2-tf"
    }  
}

# Create a Subnet called db1

resource "aws_subnet" "db1" {
    vpc_id                  = aws_vpc.testvpc.id
    cidr_block              = "192.168.2.0/24"
    availability_zone       = "ap-south-1a"

    tags                    = {
        Name                = "db1-tf"
    }  
}

# Create a Subnet called db2

resource "aws_subnet" "db2" {
    vpc_id                  = aws_vpc.testvpc.id
    cidr_block              = "192.168.3.0/24"
    availability_zone       = "ap-south-1a"

    tags                    = {
        Name                = "db2-tf"
    }  
}
