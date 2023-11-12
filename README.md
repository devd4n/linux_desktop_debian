# GET
git clone https://github.com/devd4n/linux_desktop_debian.git


# SOFTWARE INSTALL

## script in software/ directory
sublime-text \
sublime-merge \
signal-desktop \

## install seperately
google-chrome-stable \


# Optional Packages
obs-studio \
libavcodec-extra \


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
