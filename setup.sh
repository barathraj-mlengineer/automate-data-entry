#!/bin/bash

# Exit on any error
set -e

# Update package index
apt-get update

# Install required packages
apt-get install -y wget curl gnupg unzip

# Download and install Google Chrome
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt-get install -y ./google-chrome-stable_current_amd64.deb

# Clean up
rm -f google-chrome-stable_current_amd64.deb
apt-get clean
