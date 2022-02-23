#!/bin/bash

# For root control
if [ "$(id -u)" != 0 ]; then
  echo "You are not root! This script must be run as root"
  exit 1
fi

# Get USER name
USER=$(logname)

# Get HOME folder path
HOME=/home/$USER

# For 32 Bit Applications
dpkg --add-architecture i386
apt-get update

# Required
apt-get -y install gcc make linux-headers-amd64
apt-get -y install dkms bbswitch-dkms

# bbswitch module
modprobe bbswitch load_state=0

# Install Nvidia
apt-get -y install nvidia-kernel-dkms nvidia-xconfig nvidia-settings primus libgl1-nvidia-glx

apt-get -y install bumblebee-nvidia

apt-get -y install libcuda1

apt-get -y install primus-libs:i386 libgl1-nvidia-glx:i386


# Add user to bumblebee group
adduser $USER bumblebee

# Install dependencies
apt-get -f install
 
cat <<EOL
---------------------------------------------------------------
Congratulations, everything you wanted to install is installed!
---------------------------------------------------------------
EOL
 
cat <<EOL
 
EOL
 
read -p "Are you going to reboot this machine for stability? (y/n): " -n 1 answer
if [[ $answer =~ ^[Yy]$ ]];then
  reboot
fi
 
 
cat <<EOL
 
EOL



