#!/bin/bash

# ADD KEY
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -

# ADD REPO
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

# UPDATE
sudo apt update

# INSTALL
sudo apt install -y mongodb-org

# START
sudo systemctl start mongod

# AUTOSTART
sudo systemctl enable mongod
