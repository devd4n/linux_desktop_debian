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
