#!/bin/bash
# 5.20. Diffutils-3.6
cd $LFS/sources
tar -xvf diffutils-3.6.tar.xz
cd diffutils-3.6
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf diffutils-3.6
