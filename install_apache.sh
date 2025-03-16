#!/bin/bash
echo "Installing apache2 pkg"
sudo apt update
sudo apt install apache2 -y
if [ -f /var/run/apache2/apache2.pid ];
then
  echo "apache2 is running"
else
  echo "apache seems not running, starting the service now..."
 sudo systemctl start apache2
sudo systemctl enable apache2
fi
