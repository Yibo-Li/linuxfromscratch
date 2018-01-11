#!/bin/bash
# 6.33. Grep-3.1
cd /sources
tar -xvf grep-3.1.tar.xz
cd grep-3.1
./configure --prefix=/usr --bindir=/bin
make
make check
make install
cd /sources
rm -rf grep-3.1
