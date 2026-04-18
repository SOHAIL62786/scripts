#!/usr/bin/sudo /bin/bash
#
#
#
DIR="/opt/devopsapp"

useradd devopsuser
mkdir $DIR
chown devopsuser $DIR
chown 750 $DIR
echo "Setup complete"


