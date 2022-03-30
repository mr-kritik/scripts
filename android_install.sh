#!/data/data/com.termux/files/usr/bin/bash

alias pkg=apt
echo PS1='"\[\e[1;32m\] ╭──[\[\e[31m\]\u\[\e[36m\]@\[\e[32m\]TERMUX]────\[\e[31m\][\t]\[\e[32m\]────\[\e[33m\][\!]\n\[\e[1;32m\][\#]\n\[\e[1;32m\] ╰──[\[\e[34m\]\W\[\e[32m\]]──\[\e[31m\]➤\$ \[\e[m\]"'>>.bashrc
sudo sudo apt update -y
if [ ! -f /data/data/com.termux/files/usr/bin/git ]; then
   sudo apt install git -y
fi
if [ ! -f /data/data/com.termux/files/usr/bin/python3 ]; then
   sudo apt install python3 -y
fi
if [ ! -f /data/data/com.termux/files/usr/bin/pip ]; then
   apt install python3-pip  -y
fi
if [ ! -f /data/data/com.termux/files/usr/bin/wget ]; then
   apt install wget  -y
fi
if [ ! -f /data/data/com.termux/files/usr/bin/curl ]; then
   apt install curl  -y
fi
pip install --upgrade pip > /dev/null #No output. Resolved some problems with pip on debian

cd $HOME
rm -rf android_soft
git clone https://github.com/mr-kritik/android_soft.git
python3 -m pip install -r $HOME/android_soft/requirements.txt
