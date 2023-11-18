#!/bin/bash
# Set debconf configuration to overstep question when installing wireshark
# "allow non-superusers to capture packages" dialog
echo "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install wireshark
