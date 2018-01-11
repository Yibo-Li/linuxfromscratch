#!/bin/bash
# 6.57. Gzip-1.8
cd /sources
tar -xvf gzip-1.8.tar.xz
cd gzip-1.8
./configure --prefix=/usr
make
make check
make install
mv -v /usr/bin/gzip /bin
cd /sources
rm -rf gzip-1.8
