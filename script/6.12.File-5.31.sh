#!/bin/bash
cd /sources
tar -xvf file-5.31.tar.gz
cd file-5.31
./configure --prefix=/usr
make
make check
make install
cd /sources
rm -rf file-5.31
