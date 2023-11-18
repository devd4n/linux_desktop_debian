#!/bin/bash
sudo apt-add-repo sublime-text https://download.sublimetext.com/ https://download.sublimetext.com/sublimehq-pub.gpg apt/stable/
sudo apt-get update -y
sudo apt-get install sublime-text sublime-merge -y
