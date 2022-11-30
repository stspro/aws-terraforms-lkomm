variable "region" {
	description = "AWS Region"
}

variable "main_vpc_cidr" {
	description = "CIDR block for main VPC"
}

variable "public_subnets" {
	description = "public subnet main VPC"
}

variable "private_subnets" {
	description = "private subnet for main VPC"
}