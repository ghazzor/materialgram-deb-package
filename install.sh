#!/bin/bash

sudo apt install wget
wget -qO- https://raw.githubusercontent.com/ghazzor/materialgram-deb-package/master/materialgram_repo.asc | sudo tee /etc/apt/trusted.gpg.d/materialgram_repo.asc
echo "deb [arch=amd64] https://raw.githubusercontent.com/ghazzor/materialgram-deb-package/master/apt/repo/ bionic main" | sudo tee /etc/apt/sources.list.d/materialgram.list
sudo apt update && sudo apt install materialgram -y
