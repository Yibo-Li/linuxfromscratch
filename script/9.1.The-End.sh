#!/bin/bash
# 9.1. The End
echo 8.1 > /etc/lfs-release
cat > /etc/lsb-release << "EOF"
DISTRIB_ID="Linux From Scratch"
DISTRIB_RELEASE="8.1"
DISTRIB_CODENAME="Yibo Li"
DISTRIB_DESCRIPTION="Linux From Scratch"
EOF
