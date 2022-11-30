variable "ami" {
  description = "ID of AMI to use for the instance"	
  type = map
}

variable "instance_count" {
  description = "The number of instances to be created"
}

variable "instance_tags" {
  description = "The name of the instance that is tagged to "
  type = list
}

variable "aws_region" {
   description = "The reagion where the instance is created" 
}


variable "instance_type" {
    description = "The type of the instance to create"
    type = string
}

variable "vpc_id"{
    description = "ID of the vpc"
}


