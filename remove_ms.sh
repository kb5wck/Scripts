#!/bin/bash
############################
#  Remove Microsoft vscode updates from Rasberry PI OS
#  From info in https://www.cyberciti.biz/linux-news/heads-up-microsoft-repo-secretly-installed-on-all-raspberry-pis-linux-os/
#  Created 2021/02/09 - Larry Greenwald WB0SIO
#
############################
 
# Edit your /etc/hosts on RPI
sudo echo "0.0.0.0 packages.microsoft.com" >> /etc/hosts
 
# Disable vscode updates
sudo sed -i "s/deb/#deb/" /etc/apt/sources.list.d/vscode.list
 
# Put Debian package on hold so that it will not install further updates:
sudo apt-mark hold raspberrypi-sys-mods
 
# Delete Microsoft’s GPG key using the rm command:
sudo rm -vf /etc/apt/trusted.gpg.d/microsoft.gpg
 
# Make sure new keys cannot be installed and
# write protect that file on Linux using the chattr command:
sudo touch /etc/apt/trusted.gpg.d/microsoft.gpg
sudo chattr +i /etc/apt/trusted.gpg.d/microsoft.gpg
sudo lsattr /etc/apt/trusted.gpg.d/microsoft.gpg
