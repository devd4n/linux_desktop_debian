#!bin/bash

sudo apt-get install kde-standard

sudo /usr/sbin/dpkg-reconfigure keyboard-configuration
# => if that not works after reboot

setxkbmap -print -verbose 10
# => check status

# Use ibus as input Module:
echo "GTK_IM_MODULE=ibus" >> /etc/environment
echo "QT_IM_MODULE=ibus" >> /etc/environment
echo "XMODIFIERS=@im=ibus" >> /etc/environment


#download this script to the bin folder
sudo wget -qO /usr/bin/apt-add-repo https://raw.githubusercontent.com/devd4n/apt-add-repo/main/apt-add-repo.sh
#make it executable
sudo chmod +x /usr/bin/apt-add-repo

# install over PackageMgr
xargs sudo apt-get -y install < software/apt_packages_basic.txt
