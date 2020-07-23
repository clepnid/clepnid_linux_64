#!/bin/sh
sudo mkdir /etc/clepnid
sudo cp -r ./* /etc/clepnid
sudo chmod 777 /etc/clepnid/ejecutar.sh
sudo chmod a+x /etc/clepnid/clepnid.desktop
sudo cp /etc/clepnid/clepnid.desktop /usr/share/applications/
sudo update-desktop-database
