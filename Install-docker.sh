#!/bin/bash

#update package lists
sudo apt update

#Get the  official install script

curl -fsSL https://get.docker.com -o get-docker.sh

#Execute the script

sudo sh get-docker.sh

#Create a docker group

sudo groupadd docker

#Add current user to docker group

sudo usermod -aG docker $USER

#Add jenkins user to docker group

sudo usermod -aG docker jenkins

#Refresh the groups

newgrp docker

# Start Docker service
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Display Docker version
docker --version