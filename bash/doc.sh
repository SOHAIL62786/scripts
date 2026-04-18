#!/bin/bash

# Ensure the script runs as root (using the self-elevation we discussed earlier)
if [[ $EUID -ne 0 ]]; then
   echo "Please run with sudo or as root."
   exit 1
fi

echo "===== Starting Docker Installation ====="

# 1. Update the system package index
echo "Updating system..."
apt update -y && apt upgrade -y

# 2. Install Docker
# 'docker.io' is the standard package in Ubuntu's repositories
echo "Installing Docker..."
apt install docker.io -y

# 3. Start the Docker service
echo "Starting Docker service..."
systemctl start docker

# 4. Enable Docker on boot
echo "Enabling Docker to start on boot..."
systemctl enable docker

# 5. Verify installation
echo "===== Installation Verification ====="
docker --version

if [ $? -eq 0 ]; then
    echo "Docker installed successfully!"
    systemctl status docker --no-pager | grep Active
else
    echo "Docker installation failed."
fi

