FROM jenkins/jenkins:2.377-jdk11
USER root
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget
# Add Terrafrom
RUN wget https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_linux_amd64.zip
RUN unzip terraform_1.3.4_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN rm -rf terraform_1.3.4_linux_amd64.zip
# Add Docker

#  Start Jenkins
USER jenkins