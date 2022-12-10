provider "aws"{
    region = var.aws_region
    
}

data "aws_key_pair" "example" {
  key_name           = "ec2test_keypair"
  include_public_key = true
}

resource "aws_instance" "my-instance" {
  count         = var.instance_count
  ami           = lookup(var.ami,var.aws_region)
  instance_type = var.instance_type
  key_name      = data.aws_key_pair.example.key_name
  user_data     = file("user_data.sh")

  tags = {
    Name  = element(var.instance_tags,count.index)
    Batch = "5AM"
  }
}


resource "aws_security_group" "secuitygroup_id" {
  vpc_id = var.vpc_id

  // To Allow SSH Transport
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  // To Allow Port 80 Transport
  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  
  lifecycle {
    create_before_destroy = true
  }
}

