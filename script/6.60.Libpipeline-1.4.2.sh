#!/bin/bash
# 6.60. Libpipeline-1.4.2
cd /sources
tar -xvf libpipeline-1.4.2.tar.gz
cd libpipeline-1.4.2
PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr
make
make check
make install
cd /sources
rm -rf libpipeline-1.4.2
