#!/bin/bash
# 5.26. Gzip-1.8
cd $LFS/sources
tar -xvf gzip-1.8.tar.xz
cd gzip-1.8
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf gzip-1.8
