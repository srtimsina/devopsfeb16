#!/bin/bash
#echo "Installing apache2 pkg"
sudo apt update
sudo apt install apache2 curl wget -y
if [ -f /var/run/apache2/apache2.pid ];
then
  echo "apache2 is running"
else
  echo "apache seems not running, starting the service now..."
 sudo systemctl start apache2
 sudo systemctl enable apache2
 echo "Print status of apache service now"
 sudo systemctl status apache2
fi
echo "Adding users now"

users="ram shyam hari gopal"

for user in $users
  do
	echo "adding user $user"
	useradd $user
	id $user

 done

echo "Add command to install docker pkgs in ubuntu"
