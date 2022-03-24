#!/bin/bash

# UPDATE
sudo apt update

# INSTALL GIT
sudo apt install -y git

# GO TO YC-USER HOME
cd /home/yc-user/

# CLONE REPO
git clone -b monolith https://github.com/express42/reddit.git

# INSTALL
cd reddit && bundle install

# START
puma -d
