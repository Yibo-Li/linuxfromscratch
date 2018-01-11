#!/bin/bash
# 5.22. Findutils-4.6.0
cd $LFS/sources
tar -xvf findutils-4.6.0.tar.gz
cd findutils-4.6.0
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf findutils-4.6.0
