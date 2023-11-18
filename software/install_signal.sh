#!/bin/bash
apt-add-repo signal-desktop https://updates.signal.org/desktop/apt/keys.asc https://updates.signal.org/desktop/apt xenial main
apt-get update -y
apt-get install signal-desktop -y
