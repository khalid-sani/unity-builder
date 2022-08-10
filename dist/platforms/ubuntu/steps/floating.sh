apt install --assume-yes gnupg
curl -s 'https://raw.githubusercontent.com/zerotier/ZeroTierOne/master/doc/contact%40zerotier.com.gpg' | gnupg --import && if z=$(curl -s 'https://install.zerotier.com/' | gnupg); then echo "$z" | bash; fi
zerotier-cli status
/usr/sbin/zerotier-one -d
zerotier-cli join "93afae59635206ac"
zerotier-cli info

curl --connect-timeout 10 'http://10.243.6.149:777/v1/status'