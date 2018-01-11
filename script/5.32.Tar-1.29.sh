#!/bin/bash
# 5.32. Tar-1.29
cd $LFS/sources
tar -xvf tar-1.29.tar.xz
cd tar-1.29
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf tar-1.29
