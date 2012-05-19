#!/bin/bash

#java from oracle
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-jdk7-installer

#general tools
sudo apt-get install git subversion
sudo apt-get install vim-nox
sudo apt-get install ack-grep xclip curl build-essential openssl 
sudo apt-get install libreadline6 libreadline6-dev curl zlib1g zlib1g-dev 
sudo apt-get install libssl-dev libyaml-dev libsqlite3-dev sqlite3 
sudo apt-get install libxml2-dev libxslt-dev autoconf libc6-dev fortune
sudo apt-get install ncurses-dev automake libtool bison gyp tree htop
sudo apt-get install rhino
sudo apt-get install nodejs

#installing rvm
curl -L get.rvm.io | bash -s stable
. ~/.rvm/scripts/rvm
rvm reload 
rvm pkg install zlib
rvm install 1.9.3
rvm reload
rvm alias create default 1.9.3
rvm use 1.9.3
. ~/.rvm/scripts/rvm
echo ". ~/.rvm/scripts/rvm" >> ~/.bash_profile

