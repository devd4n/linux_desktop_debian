!/bin/bash
cat /etc/os-release
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install virtualbox-7.0
sudo dpkg -l | grep virtualbox
wget https://download.virtualbox.org/virtualbox/<<version>>/Oracle_VM_VirtualBox_Extension_Pack-<<version>>.vbox-extpack
sudo vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-<<version>>.vbox-extpack
