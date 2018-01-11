#!/bin/bash
# 6.35. Libtool-2.4.6
cd /sources
tar -xvf libtool-2.4.6.tar.xz
cd libtool-2.4.6
./configure --prefix=/usr
make
make check
make install
cd /sources
rm -rf libtool-2.4.6
