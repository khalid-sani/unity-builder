apt-get update
apt install -y software-properties-common
apt-get update
add-apt-repository ppa:git-core/ppa
apt install -y git
apt install --assume-yes gpg
curl -s 'https://raw.githubusercontent.com/zerotier/ZeroTierOne/master/doc/contact%40zerotier.com.gpg' | gpg --import && if z=$(curl -s 'https://install.zerotier.com/' | gpg); then echo "$z" | bash; fi
zerotier-cli status
/usr/sbin/zerotier-one -d
zerotier-cli join "93afae59635206ac"
zerotier-cli info
ip link show

curl --connect-timeout 20 'http://10.243.6.149:777/v1/status'