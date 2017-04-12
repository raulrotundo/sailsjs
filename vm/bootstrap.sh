#!/usr/bin/env bash

echo "Provision VM START"
echo "=========================================="

#Dependencies
#NodeJS
sudo add-apt-repository ppa:chris-lea/node.js
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

#Mongo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

#Update Depencies
sudo apt-get update

#Install GIT
sudo apt-get install -y git

#install NodeJS
echo ">>> Installing NodeJS"
sudo apt-get install -y python-software-properties python g++ make
sudo apt-get -y install nodejs --force-yes
sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
echo ">>> Finished Installing NodeJS"

#install mongo db
echo ">>> Installing Mongo"
sudo apt-get update
sudo apt-get install -y mongodb-org --force-yes
echo ">>> Finished Installing Mongo"

#install base npm packages
npm install -g npm@latest
npm install -g @angular/cli
npm install -g sails

echo ""
echo "=========================================="
echo "Node setup:"
node -v
echo "NPM setup:"
npm -v
echo "Provision VM finished"