#!/bin/bash
# 7.5. General Network Configuration
cd /etc/sysconfig/
cat > ifconfig.enp0s3 << "EOF"
ONBOOT=yes
IFACE=enp0s3
SERVICE=ipv4-static
IP=10.0.2.15
GATEWAY=10.0.2.2
PREFIX=24
BROADCAST=10.0.2.255
EOF
cat > /etc/resolv.conf << "EOF"
# Begin /etc/resolv.conf

domain liyibo.org
nameserver 8.8.8.8
nameserver 114.114.114.114

# End /etc/resolv.conf
EOF
echo "lfs" > /etc/hostname
cat > /etc/hosts << "EOF"
# Begin /etc/hosts

127.0.0.1 localhost
127.0.1.1 lfs.liyibo.org lfs
::1       localhost ip6-localhost ip6-loopback
ff02::1   ip6-allnodes
ff02::2   ip6-allrouters

# End /etc/hosts
EOF
