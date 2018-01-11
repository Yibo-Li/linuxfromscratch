#!/bin/bash
# 5.28. Make-4.2.1
cd $LFS/sources
tar -xvf make-4.2.1.tar.bz2
cd make-4.2.1
./configure --prefix=/tools --without-guile
make
make check
make install
cd $LFS/sources
rm -rf make-4.2.1
