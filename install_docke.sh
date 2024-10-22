#!/bin/bash

# Step 1: Uninstall any conflicting packages
sudo apt remove docker.io docker-doc docker-compose docker-compose-v2 podman-docker runc

# Step 2: Set up the Docker repository
sudo apt install curl gpg
sudo printf '%s\n' "deb https://download.docker.com/linux/debian bullseye stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-ce-archive-keyring.gpg
sudo apt update

# Step 3: Install the Docker packages
sudo apt install docker-ce

# Step 4: Verify the installation
sudo docker run hello-world
