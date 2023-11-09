# Setup
```
sudo apt-get install kde-standard

sudo /usr/sbin/dpkg-reconfigure keyboard-configuration
=> if that not works after reboot

setxkbmap -print -verbose 10
=> check status


Use ibus as input Module:
echo "GTK_IM_MODULE=ibus" >> /etc/environment
echo "QT_IM_MODULE=ibus" >> /etc/environment
echo "XMODIFIERS=@im=ibus" >> /etc/environment

```

Replace apt-key cause its depraciated: \
https://github.com/devd4n/linux-scripts/blob/main/deb-apt-key-2.sh

# Important Packages

## install over PackageMgr (write to file)
`xargs sudo apt-get -y install < packages.txt`

tcpdump \
nmap \
wireshark \
ntp \
gimp \
keepassxc \
firefox-esr \
thunderbird \
vim \
libreoffice \
nextcloud-desktop \
cups \
cups-client \
hplip \
pulseaudio-module-bluetooth \
ofono \
openvpn \
network-manager-openvpn-gnome \
openconnect \
network-manager-openconnect \
network-manager-openconnect-gnome \
wavemon \
filezilla \
minicom \
simplescreenrecorder

## install seperately
sublime-text \
sublime-merge \
google-chrome-stable \
signal-desktop \

# Optional Packages
obs-studio \
libavcodec-extra \

# VirtualBox
```
cat /etc/os-release
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install virtualbox-7.0
sudo dpkg -l | grep virtualbox
wget https://download.virtualbox.org/virtualbox/<<version>>/Oracle_VM_VirtualBox_Extension_Pack-<<version>>.vbox-extpack
sudo vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-<<version>>.vbox-extpack
```
# Signal
\>= Debian 12
```
apt-add-repo signal-desktop https://updates.signal.org/desktop/apt/keys.asc https://updates.signal.org/desktop/apt xenial main
```
 < Debian 12:
```
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' | sudo tee /etc/apt/sources.list.d/signal-xenial.list
sudo apt update
sudo apt install signal-desktop
```

# Sublime-Text
```
apt-add-repo sublime-text https://download.sublimetext.com/ https://download.sublimetext.com/sublimehq-pub.gpg apt/stable/
```

# SETUP Applications

## Firefox Extensions
floccus /
Qwant VIPrivacy /

## Nextcloud
logexpire = in hours /
```
nextcloud --background --logdir /var/log/ --logfile nextcloud.log --logexpire 48
```
--isvfsenabled       : whether to set a VFS or non-VFS folder (1 for 'yes' or 0 for 'no') when creating an account via command-line.
```
nextcloud --serverurl <<http(s)://serverurl>> --userid <<userid>> --apppassword <<>> --localdirpath /home/<<user>>/nextcloud --remotedirpath /
```

## floccus
~/.floccus.profile.json
```
[
  {
    "localRoot": "toolbar_____",
    "strategy": "default",
    "syncInterval": 15,
    "nestedSync": false,
    "failsafe": true,
    "allowNetwork": false,
    "type": "nextcloud-bookmarks",
    "url": "https://<<destination-nextcloud-server>>",
    "username": "<<username>>",
    "serverRoot": "",
    "includeCredentials": false,
    "allowRedirects": false,
    "enabled": true,
    "syncing": false,
    "error": null,
  }
]
```





