#!/usr/bin/sudo /bin/bash
#
#
apt update
apt install docker.io
systemctl service start docker

docker --version
