#!/bin/bash
# A script to automate the setup of a new Fedora VPC

echo "Running update"
sudo yum -y update

echo "Installing dnf"
sudo yum -y install dnf

echo "Installing other packages"
sudo dnf -y install ansible nano git

echo "Installing and configuring Docker"
sudo dnf -y install dnf-plugins-core
sudo dnf -y  config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf -y install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker && sudo gpasswd -a $USER docker && sudo systemctl restart docker

echo "Restarting machine"
sudo reboot
