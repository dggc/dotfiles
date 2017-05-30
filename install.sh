#! /bin/bash

JDK_VERSION=8
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823


sudo apt-get update -y
sudo apt-get dist-upgrade -y
sudo apt-get install vim git-core stow -y
sudo apt-get install gitk git-flow -y
sudo apt-get install indicator-multiload -y
sudo apt-get install terminator -y
sudo apt-get install compizconfig-settings-manager -y
sudo apt-get install openjdk-${JDK_VERSION}-jdk -y
sudo apt-get install sbt -y
sudo apt-get install python3-venv -y
sudo apt-get install -y gparted
sudo apt-get install -y python-gpgme
sudo apt-get install -y synergy

#Node.js
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

#Docker
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo usermod -aG docker $USER
sudo systemctl enable docker
