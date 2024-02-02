
 module "ec2" {
  source = "../../../modules/ec2"
  vpc_id = var.vpc_id
  instance_type = var.instance_type
  ami = var.ami
  aws_region = var.aws_region
  instance_count = var.instance_count
  instance_tags = var.instance_tags
  
}

