#!/bin/sh
sudo cp -R ./* /etc/clepnid
sudo chmod 777 /etc/clepnid/ejecutar.sh
sudo chmod 777 /etc/clepnid/clepnid.desktop
sudo cp -R /etc/clepnid/clepnid.desktop /usr/share/applications/
sudo update-desktop-database
