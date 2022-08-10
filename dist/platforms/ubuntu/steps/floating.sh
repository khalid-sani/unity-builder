curl -s https://install.zerotier.com | sudo bash
zerotier-cli status
/usr/sbin/zerotier-one -d
zerotier-cli join "93afae59635206ac"
zerotier-cli info

curl --connect-timeout 10 'http://10.243.6.149:777/v1/status'