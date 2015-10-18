#!/usr/bin/env bash
set e+
sudo apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_0.10 | sudo -E bash -
sudo add-get-repository ppa:docker-maint/testing
sudo apt-get update
sudo apt-get install -y git build-essential g++ nodejs
sudo apt-get install -y docker.io

sudo npm install -g npm
sudo npm install -g bower
sudo npm install -g nscale

sudo chown -R vagrant:vagrant /usr/local
sudo chown -R vagrant:vagrant /var/run/docker.sock

curl –sSL https://test.docker.com/ubuntu | sh

#enter this command for using docker
#sudo usermod -aG docker $(whoami)

#For using nscale you must create git config file as follows:
#git config --global user.name "orxan07"
#git config --global user.email "orxan@rehimli.info"
#ssh-keygen -t rsa -b 4096 -C "orxan@rehimli.info"
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_rsa
#cat ~/.ssh/id_rsa.pub
# copy and add rsa_key to user settings (SSH keys) in github.com

# tidy up
apt-get autoremove -y
