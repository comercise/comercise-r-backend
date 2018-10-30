#! /bin/bash

sudo yum update -y

sudo yum install -y \
  wget

sudo amazon-linux-extras install -y \
  R3.4

sudo Rscript r-packages.r

wget https://download3.rstudio.org/centos6.3/x86_64/shiny-server-1.5.9.923-x86_64.rpm
sudo yum install -y --nogpgcheck shiny-server-1.5.9.923-x86_64.rpm
rm shiny-server-1.5.9.923-x86_64.rpm
