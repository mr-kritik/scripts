#!/bin/bash

sudo sudo apt update -y
if [ ! -f /usr/bin/git ]; then
   sudo apt install git -y
fi
if [ ! -f /usr/bin/python3 ]; then
   sudo apt install python3 -y
fi
if [ ! -f /usr/bin/pip ]; then
   apt install python3-pip  -y
fi
if [ ! -f /usr/bin/wget ]; then
   apt install wget  -y
fi
if [ ! -f /usr/bin/curl ]; then
   apt install curl  -y
fi
pip install --upgrade pip > /dev/null #No output. Resolved some problems with pip on debian

cd $HOME
rm -rf VZ
git clone https://github.com/mr-kritik/VZ.git
python3 -m pip install -r $HOME/VZ/MHDDoS/requirements.txt


# Install docker
printf '%s\n' "deb https://download.docker.com/linux/debian bullseye stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-ce-archive-keyring.gpg
sudo apt update
apt install -y docker-ce docker-ce-cli containerd.io
