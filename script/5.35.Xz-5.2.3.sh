#!/bin/bash
# 5.35. Xz-5.2.3
cd $LFS/sources
tar -xvf xz-5.2.3.tar.xz
cd xz-5.2.3
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf xz-5.2.3
