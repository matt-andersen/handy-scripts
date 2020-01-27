#!/bin/bash

echo "Running update"
sudo yum -y update

echo "Installing other packages"
sudo yum install -y ansible nano git epel-release dnf


echo "Installing and configuring Docker"
sudo dnf -y install dnf-plugins-core
sudo dnf -y  config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf -y install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker && sudo gpasswd -a $USER docker && sudo systemctl restart docker
