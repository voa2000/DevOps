FROM jenkins/jenkins:2.377-jdk11
USER root
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget ca-certificates curl gnupg  lsb-release
# Add Terrafrom
RUN wget https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_linux_amd64.zip
RUN unzip terraform_1.3.4_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN rm -rf terraform_1.3.4_linux_amd64.zip
RUN terraform init
# Add Docker

# RUN mkdir -p /etc/apt/keyrings
# RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
# RUN chmod a+r /etc/apt/keyrings/docker.gpg
# RUN apt-get install docker-ce docker-ce-cli
RUN useradd docker && echo "docker:docker" | chpasswd
RUN mkdir -p /home/docker && chown -R docker:docker /home/docker

RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
# RUN chmod 666 /var/run/docker.sock
#  Start Jenkins
