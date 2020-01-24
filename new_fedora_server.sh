#!/bin/bash

echo "Running update"
sudo yum -y update

echo "Installing other packages"
sudo yum install -y ansible nano git dnf


echo "Installing and configuring Docker"
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
