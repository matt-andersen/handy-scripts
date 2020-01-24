#!/bin/bash

echo "Running update"
sudo yum -y update

echo "Installing other packages"
sudo yum install -y ansible nano


echo "Installing and configuring Docker"
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo yum install docker-ce
