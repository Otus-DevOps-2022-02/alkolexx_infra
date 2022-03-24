#!/bin/bash

# UPDATE
sudo apt update

# INSTALL
sudo apt install -y ruby-full ruby-bundler build-essential

# CHECK
ruby -v
bundler -v