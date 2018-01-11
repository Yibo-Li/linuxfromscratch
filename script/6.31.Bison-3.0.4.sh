#!/bin/bash
# 6.31. Bison-3.0.4
cd /sources
tar -xvf bison-3.0.4.tar.xz
cd bison-3.0.4
./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.0.4
make
make install
cd /sources
rm -rf bison-3.0.4
