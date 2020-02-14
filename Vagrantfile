#!/bin/ruby
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64" # officially published image

  config.vbguest.auto_update = false

  config.vm.synced_folder ".", "/vagrant", owner: "vagrant", group: "vagrant", mount_options: ["dmode=777", "fmode=700"]
  config.vm.synced_folder ENV['HOME'] + "/.aws", "/home/vagrant/.aws"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = 2048
    vb.cpus = 2
  end

  config.vm.define :provisioner do |provisioner|
    # Install Ansible, Packer, Docker, Git, Terraform and Kubernetes
    provisioner.vm.provision "shell", inline: "sudo apt-get update"
    provisioner.vm.provision "shell", inline: "sudo apt install -y docker.io python3-pip"
    provisioner.vm.provision "shell", inline: "zcat <(curl -s \"https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_linux_amd64.zip\") | sudo tee /usr/bin/terraform > /dev/null && sudo chmod +x /usr/bin/terraform"
    provisioner.vm.provision "shell", inline: "zcat <(curl -s \"https://releases.hashicorp.com/packer/1.4.3/packer_1.4.3_linux_amd64.zip\" ) | sudo tee /usr/bin/packer > /dev/null && sudo chmod +x /usr/bin/packer"
    provisioner.vm.provision "shell", inline: "sudo pip3 install awscli --upgrade"
    provisioner.vm.provision "shell", inline: "sudo -H pip3 install ansible==2.8.5"
    provisioner.vm.provision "shell", inline: "sudo gpasswd -a vagrant docker && newgrp docker" # enable non-root docker
    provisioner.vm.provision "shell", inline: "sudo curl -s https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/kubectl -o /usr/bin/kubectl && sudo chmod +x /usr/bin/kubectl"
    provisioner.vm.provision "shell", inline: "kubectl version --short --client"
    provisioner.vm.provision "shell", inline: "docker --version"
    provisioner.vm.provision "shell", inline: "aws --version"
    provisioner.vm.provision "shell", inline: "packer --version"
    provisioner.vm.provision "shell", inline: "terraform --version"
  end
end
