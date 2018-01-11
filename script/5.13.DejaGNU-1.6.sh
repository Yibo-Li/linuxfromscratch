#!/bin/bash
# 5.13. DejaGNU-1.6
cd $LFS/sources
tar -xvf dejagnu-1.6.tar.gz
cd dejagnu-1.6
./configure --prefix=/tools
make install
make check
cd $LFS/sources
rm -rf dejagnu-1.6
