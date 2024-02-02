#### **aws-terraforms-lkomm**
###### This Repository provides terraform scripts and other supporting files to create AWS Infrastructure for onboarding Java applications onto the AWS Cloud.
It contains terraform libraries which create **AWS VPC, EC2, ALB, ECS-Fargate** and Environment specific tfvars files. 

Prerequisites : 
 * Installation the following AWS CLI version : **aws-cli/2.8.7**
 * Download Terraform CLI  : **terraform v1.3.3**

Typical usage on a Window OS(Open Windows Console) : 
  1) Clone this Git Repo locally.
  2) Goto the folder environment/dev
  3) Depending on the type of AWS infrastructure to create traverse to that folder eg: vpc, ec2 etc..
  4) Update the tfvars file as per requirement.
  5) Run the following terraform commands :
   * terraform init
   * terraform plan -var-file="terraform.tfvars"
   * terraform apply -var-file="terraform.tfvars"
  6) Once validated and tested, Run the following terraform command to teardown the AWS infrastructure :
   * terraform destroy -var-file="terraform.tfvars"

