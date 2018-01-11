#!/bin/bash
# 5.23. Gawk-4.1.4
cd $LFS/sources
tar -xvf gawk-4.1.4.tar.xz
cd gawk-4.1.4
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf gawk-4.1.4
