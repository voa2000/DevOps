# DevOps
DevOps is a set of practices that combines software development and information-technology operations which aims to shorten the systems development life cycle and provide continuous delivery with high software quality. Wikipedia

I will be building a configuration pipeline using Packer, Ansible, Jenkins, AWS, NodeJS and Terraform.
I will be using a dev machine by building vagrant in virtualbox.

### Stage 1: Virtual box
VirtualBox is a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use. Not only is VirtualBox an extremely feature rich, high performance product for enterprise customers, it is also the only professional solution that is freely available as Open Source Software under the terms of the GNU General Public License (GPL) version 2.

1.  Go to https://www.virtualbox.org/
2.  Download and install virtualbox.

### Stage 2: Vagrant
Vagrant is an open-source software product for building and maintaining portable virtual software development environments, e.g. for VirtualBox, KVM, Hyper-V, Docker containers, VMware, and AWS. It tries to simplify the software configuration management of virtualizations in order to increase development productivity. Wikipedia

1.  

### Packer Installation
----
1.  Go to https://www.packer.io/downloads.html    
2.  To install Packer on MacOS   
3.  Go to the terminal or iterm2  
4.  Type in --> brew install packer 

### Below are the commands which can be used in Packer       
    *  build     -    Build image(s) from template       
    *  fix       -    Fixes templates from old versions of packer    
    *  inspect   -    See components of a template       
    *  validate  -    Check that a template is valid       
    *  version   -    Prints the Packer version          
### Ansible 

### To create ubunto image run this .     
1. ```Packer build -var "aws_access_key=key" -var "aws_secret_key=secret" ubuntu.json ```   
2. Subtitute aws_access_key and aws_secret_key with your own keys to build the image.
3.  Kubernates is to be used with docker using Docker for desktop or minikube or Amazon EKS.
### Learning Git
*  https://learngitbranching.js.org/
### AWS Fargate

### Docker 

