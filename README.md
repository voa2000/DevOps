# DevOps
Building a configuration pipeline using Packer, Jenkins, AWS, NodeJS and Terraform

### Packer Installation
----
1.  Go to https://www.packer.io/downloads.html    
2.  To install Packer on MacOS   
3.  Go to the terminal   
4.  Type in --> brew install packer 

### Below are the commands which can be used in Packer       
    *  build     -    Build image(s) from template       
    *  fix       -    Fixes templates from old versions of packer    
    *  inspect   -    See components of a template       
    *  validate  -    Check that a template is valid       
    *  version   -    Prints the Packer version          
### To create ubunto image run this .     
*   Packer build -var "aws_access_key=key" -var "aws_secret_key=secret" ubuntu.json    
*   Subtitute aws_access_key and aws_secret_key with your own keys to build the image.
*   Kubernates is to be used with docker using Docker for desktop or minikube or Amazon EKS.
### Learning Git
*   https://learngitbranching.js.org/
