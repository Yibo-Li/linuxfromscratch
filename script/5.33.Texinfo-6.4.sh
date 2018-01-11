#!/bin/bash
# 5.33. Texinfo-6.4
cd $LFS/sources
tar -xvf texinfo-6.4.tar.xz
cd texinfo-6.4
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf texinfo-6.4
