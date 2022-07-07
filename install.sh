#!/bin/bash

if [ $(whoami) != "root" ]
then
echo "Root required for adding autologin as a systemd service"
exit 1
fi
if [ $# == 1 ]
then

if [ $1 == "uninstall" ]
then
echo "Removing autologin-script from your System"

echo "disabling Service"
systemctl stop autologinBavaria.service
systemctl disable autologinBavaria.service
rm /etc/systemd/system/autologinBavaria.service
systemctl daemon-reload

echo "removing user autologin"
userdel autologin

echo "removing Files"
rm -r /etc/autologin

echo "Uninstalling successfull"
exit 0
fi

fi

echo "copying script to /etc/autologin/autologin.sh"
mkdir /etc/autologin
cp /src/linux/autologin.sh /etc/autologin/autologin.sh

echo "adding User autologin"
useradd -d /etc/autologin/ autologin

echo "installing UNIT-File"
cp /src/linux/autologinBavaria.service /etc/systemd/system/autologinBavaria.service

echo "enabling the Service to be executed on startup"
systemctl daemon-reload
systemctl enable autologinBavaria.service
systemctl start autologinBavaria.service

echo "Installed autologin successfull"
exit 0