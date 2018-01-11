#!/bin/bash
# 5.25. Grep-3.1
cd $LFS/sources
tar -xvf grep-3.1.tar.xz
cd grep-3.1
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf grep-3.1
