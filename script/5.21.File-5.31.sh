#!/bin/bash
# 5.21. File-5.31
cd $LFS/sources
tar -xvf file-5.31.tar.gz
cd file-5.31
./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf file-5.31
