#!/bin/sh

if ! command -v java &> /dev/null; then
	echo "Java no esta instalado."
	sudo apt update
	sudo apt install openjdk-8-jre-headless
fi
echo "Java esta instalado."
sudo sed -i -e '/^assistive_technologies=/s/^/#/' /etc/java-*-openjdk/accessibility.properties
sudo mkdir /etc/clepnid
sudo cp -R ./* /etc/clepnid
sudo chmod 777 /etc/clepnid/ejecutar.sh
sudo chmod 777 /etc/clepnid/clepnid.desktop
sudo cp -R /etc/clepnid/clepnid.desktop /usr/share/applications/
sudo update-desktop-database
