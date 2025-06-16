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
    cidr_block              = var.web1_cidr_range
    availability_zone       = var.web1_az

    tags                    = {
        Name                = "web1-tf"
    }  
}

# Create a Subnet called Web02

resource "aws_subnet" "Web02" {
    vpc_id                  = aws_vpc.testvpc.id
    cidr_block              = var.web2_cidr_range
    availability_zone       = var.web2_az

    tags                    = {
        Name                = "web2-tf"
    }  
}

# Create a Subnet called db1

resource "aws_subnet" "db1" {
    vpc_id                  = aws_vpc.testvpc.id
    cidr_block              = var.db1_cidr_range
    availability_zone       = var.db1_az

    tags                    = {
        Name                = "db1-tf"
    }  
}

# Create a Subnet called db2

resource "aws_subnet" "db2" {
    vpc_id                  = aws_vpc.testvpc.id
    cidr_block              = var.db2_cidr_range
    availability_zone       = var.db2_az

    tags                    = {
        Name                = "db2-tf"
    }  
}
