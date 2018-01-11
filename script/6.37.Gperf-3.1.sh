#!/bin/bash
# 6.37. Gperf-3.1
cd /sources
tar -xvf gperf-3.1.tar.gz
cd gperf-3.1
./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1
make
make -j1 check
make install
cd /sources
rm -rf gperf-3.1
