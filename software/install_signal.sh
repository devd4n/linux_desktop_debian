#!/bin/bash
apt-add-repo signal-desktop https://updates.signal.org/desktop/apt https://updates.signal.org/desktop/apt/keys.asc xenial main
sudo apt-get update -y
sudo apt-get install signal-desktop -y
