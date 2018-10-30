#! /bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt-get install -y \
    wget \
    r-base \
    r-base-dev

sudo Rscript r-packages.r

sudo apt-get install -y \
    gdebi-core

wget https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.9.923-amd64.deb
sudo gdebi shiny-server-1.5.9.923-amd64.deb
