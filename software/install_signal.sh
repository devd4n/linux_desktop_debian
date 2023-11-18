#!/bin/bash
sudo apt-add-repo signal-desktop https://updates.signal.org/desktop/apt/keys.asc https://updates.signal.org/desktop/apt xenial main
sudo apt-get update -y
sudo apt-get install signal-desktop -y
