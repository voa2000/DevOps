# jenkins-Terraform
Learning how to create infrastructure as code in Jenkins

Clone repo
Create image- e.g docker build -t jenkins:v10 .
Create container - e.g.docker run -p 8088:8080 -p 50055:50000 -d -v jenkins_home:/var/jenkins_home jenkins:v10
Add AWS creds to running container

# Reference Documentation
### Download URL: https://www.terraform.io/downloads.html
### AWS Resources: https://www.terraform.io/docs/providers/aws/
### List of providers: https://www.terraform.io/docs/providers/index.html
