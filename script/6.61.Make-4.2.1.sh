#!/bin/bash
# 6.61. Make-4.2.1
cd /sources
tar -xvf make-4.2.1.tar.bz2
cd make-4.2.1
./configure --prefix=/usr
make
make PERL5LIB=$PWD/tests/ check
make install
cd /sources
rm -rf make-4.2.1
