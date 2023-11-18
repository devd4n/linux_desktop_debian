#!bin/bash

sudo apt-get install kde-standard

sudo /usr/sbin/dpkg-reconfigure keyboard-configuration
# => if that not works after reboot

setxkbmap -print -verbose 10
# => check status

##############################
# Use ibus as input Module:
##############################
if [ $(grep -c GTK_IM_MODULE= /etc/environment) == 0 ]; then
  echo "GTK_IM_MODULE=ibus" | sudo tee -a /etc/environment
else
  sed -i 's/GTK_IM_MODULE=.*/GTK_IM_MODULE=ibus/g' filename
fi

if [ $(grep -c QT_IM_MODULE= /etc/environment) == 0 ]; then
  echo "QT_IM_MODULE=ibus" | sudo tee -a /etc/environment
else
  sudo sed -i 's/QT_IM_MODULE=.*/QT_IM_MODULE=ibus/g' /etc/environment
fi

if [ $(grep -c QT_IM_MODULE= /etc/environment) == 0 ]; then
  echo "QT_IM_MODULE=ibus" | sudo tee -a /etc/environment
else
  sudo sed -i 's/QT_IM_MODULE=.*/QT_IM_MODULE=ibus/g' /etc/environment
fi

if [ $(grep -c XMODIFIERS=@im=ibus /etc/environment) == 0 ]; then
  echo "XMODIFIERS=@im=ibus" | sudo tee -a /etc/environment
else
  sudo sed -i 's/XMODIFIERS=.*/XMODIFIERS=@im=ibus/g' /etc/environment
fi


# download apt-add-repo script to the bin folder
sudo wget -qO /usr/bin/apt-add-repo https://raw.githubusercontent.com/devd4n/apt-add-repo/main/apt-add-repo.sh
#make it executable
sudo chmod +x /usr/bin/apt-add-repo


# install over PackageMgr
xargs sudo apt-get -y install < software/apt_packages_basic.txt

/bin/bash software/install_wireshark.sh
/bin/bash software/install_signal.sh
/bin/bash software/install_sublime_text.sh
# Virtualbox script must be upgraded to work properly:
#/bin/bash software/install_virtualbox.sh

