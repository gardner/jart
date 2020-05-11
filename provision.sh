#!/bin/bash -ex

apt-get update 
apt-get install make build-essential linux-headers-$(uname -r) -y

if [ ! -d netmap ]; then
  aria2c -x4 "https://github.com/luigirizzo/netmap/archive/master.zip"
  unzip netmap-master.zip
  mv netmap-master netmap
  cd netmap/LINUX
  ./configure
  make
fi

