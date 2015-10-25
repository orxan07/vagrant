#!/bin/bash

sudo apt-get update

# Install build tools
sudo apt-get install -y g++ git curl vim build-essential

#nodejs
sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs

# npm packages
sudo npm install -g nscale

# Docker
wget -q -O - https://get.docker.io/gpg | apt-key add -
echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
sudo apt-get update 
sudo apt-get install -y --force-yes lxc-docker


#Set time
sudo echo "Europe/Moscow" | sudo tee /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata
sudo apt-get update -y


# Setup locales
echo -e "LC_CTYPE=en_US.UTF-8\nLC_ALL=en_US.UTF-8\nLANG=en_US.UTF-8\nLANGUAGE=en_US.UTF-8" | tee -a /etc/environment > /dev/null
locale-gen en_US en_US.UTF-8
dpkg-reconfigure locales

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
