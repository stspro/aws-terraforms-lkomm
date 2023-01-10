

module "s3-private"{
        
		source = "../../../modules/s3"
        name = "private-terraform-module"
		environment = "dev"
}
 

