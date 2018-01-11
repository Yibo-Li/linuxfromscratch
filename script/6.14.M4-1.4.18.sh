#!/bin/bash
# 6.14. M4-1.4.18
cd /sources
tar -xvf m4-1.4.18.tar.xz
cd m4-1.4.18
./configure --prefix=/usr
make
make check
make install
cd /sources
rm -rf m4-1.4.18
