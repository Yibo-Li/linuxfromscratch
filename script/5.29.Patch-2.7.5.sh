#!/bin/bash
# 5.29. Patch-2.7.5
cd $LFS/sources
tar -xvf patch-2.7.5.tar.xz
cd patch-2.7.5
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf patch-2.7.5
