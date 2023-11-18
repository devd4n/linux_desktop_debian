#!/bin/bash
apt-add-repo sublime-text https://download.sublimetext.com/ https://download.sublimetext.com/sublimehq-pub.gpg apt/stable/
apt-get update -y
apt-get install sublime-text sublime-merge -y
