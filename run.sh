#!/bin/bash

# Copy the dyn motd script
cp src/dynmotd.sh /etc/

# Create the link to the script
echo "
# Open dynamic motd on every start
sh /etc/dynmotd.sh" >> /etc/profile

# Install pip
easy_install pip

# Install pydf
pip install pydf

# Install XCode feature
xcode-select --install

# Intsall iStats
gem install iStats
