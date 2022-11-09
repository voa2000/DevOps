FROM jenkins/jenkins:2.377-jdk11
USER root
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget ca-certificates curl gnupg  lsb-release

# Add Terrafrom
RUN wget https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_linux_amd64.zip
RUN unzip terraform_1.3.4_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN rm -rf terraform_1.3.4_linux_amd64.zip

# Add Docker
RUN useradd docker && echo "docker:docker" | chpasswd
RUN mkdir -p /home/docker && chown -R docker:docker /home/docker

RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
# Add AWS-CLI
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-setuptools \
        groff \
        less \
    && pip3 install --upgrade pip \
    && apt-get clean

RUN pip3 --no-cache-dir install --upgrade awscli

