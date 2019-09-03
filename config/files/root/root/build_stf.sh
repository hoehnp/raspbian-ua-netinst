#!/bin/sh

cd /root
wget https://download.rethinkdb.com/dist/rethinkdb-2.3.6.tgz
tar xf rethinkdb-2.3.6.tgz
npm install -g browserify@13.1.0
dphys-swapfile swapoff
dphys-swapfile uninstall
sed -i 's/#CONF_SWAPSIZE=/CONF_SWAPSIZE=1024/g' /etc/dphys-swapfile
dphys-swapfile setup
dphys-swapfile swapon

#./configure --with-system-malloc --allow-fetch CXX=clang++
#make ALLOW_WARNINGS=1
#make install ALLOW_WARNINGS=1

#cd root
#git clone https://github.com/openstf/stf
