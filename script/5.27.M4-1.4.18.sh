#!/bin/bash
# 5.27. M4-1.4.18
cd $LFS/sources
tar -xvf m4-1.4.18.tar.xz
cd m4-1.4.18
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf m4-1.4.18
