#!/bin/bash
# 6.51. Diffutils-3.6
cd /sources
tar -xvf diffutils-3.6.tar.xz
cd diffutils-3.6
./configure --prefix=/usr
make
make check
make install
cd /sources
rm -rf diffutils-3.6
