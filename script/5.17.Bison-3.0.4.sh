#!/bin/bash
# 5.17. Bison-3.0.4
cd $LFS/sources
tar -xvf bison-3.0.4.tar.xz
cd bison-3.0.4
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf bison-3.0.4
