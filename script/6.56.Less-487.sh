#!/bin/bash
# 6.56. Less-487
cd /sources
tar -xvf less-487.tar.gz
cd less-487
./configure --prefix=/usr --sysconfdir=/etc
make
make install
cd /sources
rm -rf less-487
