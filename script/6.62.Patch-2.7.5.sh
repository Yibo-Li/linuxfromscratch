#!/bin/bash
# 6.62. Patch-2.7.5
cd /sources
tar -xvf patch-2.7.5.tar.xz
cd patch-2.7.5
./configure --prefix=/usr
make
make check
make install
cd /sources
rm -rf patch-2.7.5
