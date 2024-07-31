#!/bin/bash

# Step 1: Uninstall conflicting packages
sudo apt update && apt remove docker.io docker-doc docker-compose docker-compose-v2 podman-docker ontainerd runc

# Step 2: Set up the Docker repository
sudo apt install curl gpg ca-certificates
sudo printf '%s\n' "deb https://download.docker.com/linux/debian bullseye stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-ce-archive-keyring.gpg
sudo apt update

# Step 2: Install the Docker packages
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Step 3: Verify the installation
sudo docker run hello-world
