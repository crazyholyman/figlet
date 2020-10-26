sysctl -a 2>/dev/null | egrep "ipv4.*(accept|send)_redirects" | awk -F "=" '{print $1 "=0"}' >> /etc/sysctl.conf
sed -i 's|net.ipv4.ip_forward = 0|net.ipv4.ip_forward = 1|gi' /etc/sysctl.conf

sysctl --system

yum install strongswan openvpn zip curl wget -y

