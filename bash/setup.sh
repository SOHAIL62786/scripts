#!/bin/bash

echo "Starting environment setup..."

# create user
sudo useradd devopsuser

# create directory
sudo mkdir -p /opt/devops_project

# change ownership
sudo chown devopsuser:devopsuser /opt/devops_project

# set permission
sudo chmod 750 /opt/devops_project

echo "Environment ready!"
