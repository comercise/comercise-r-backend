#! /bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt-get install -y r-base r-base-dev wget

sudo su - \
    -c "R -e \"install.packages('shiny', repos='https://cran.rstudio.com/')\""

sudo apt-get install gdebi-core

wget https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.9.923-amd64.deb

sudo gdebi shiny-server-1.5.9.923-amd64.deb

sudo su - \
    -c "R -e \"install.packages('rmarkdown')\""
