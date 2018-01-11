#!/bin/bash
# 5.14. Check-0.11.0
cd $LFS/sources
tar -xvf check-0.11.0.tar.gz
cd check-0.11.0
PKG_CONFIG= ./configure --prefix=/tools
make
make check
make install
cd $LFS/sources
rm -rf check-0.11.0
