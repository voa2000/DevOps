## DevOps
Building a configuration pipeline using Packer, Jenkins, AWS, NodeJS and Terraform

Packer Installation
----
*   https://www.packer.io/downloads.html    
To install Packer on MacOS   
Go to the terminal   
Type in --> brew install packer 

Below are the commands which can be used in Packer       
    *  build     -    build image(s) from template       
    *  fix       -    fixes templates from old versions of packer    
    *  inspect   -    see components of a template       
    *  validate  -    check that a template is valid       
    *  version   -    Prints the Packer version          
*   To create ubunto image run this .     
*   packer build -var "aws_access_key=key" -var "aws_secret_key=secret" ubuntu.json    
*   subtitute aws_access_key and aws_secret_key with your own keys to build the image.
