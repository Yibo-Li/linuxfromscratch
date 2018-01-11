#!/bin/bash
# 6.43. Autoconf-2.69
cd /sources
tar -xvf autoconf-2.69.tar.xz
cd autoconf-2.69
./configure --prefix=/usr
make
make check
make install
cd /sources
rm -rf autoconf-2.69
