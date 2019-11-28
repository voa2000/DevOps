# Terraform
Learning how to create infrastructure as code

Created a connection to aws in the connections.tf file and a VPC in the resources file.
### Useful Commands

$ terraform plan # plan

$ terraform apply # shortcut for plan & apply - avoid this in production

$ terraform plan -out out.terraform # terraform plan and write the plan to out file

$ terraform apply out.terraform # apply terraform plan using out file

$ terraform show # show current state

# Reference Documentation
### Download URL: https://www.terraform.io/downloads.html
### AWS Resources: https://www.terraform.io/docs/providers/aws/
### List of providers: https://www.terraform.io/docs/providers/index.html
