#!/bin/bash
# 6.44. Automake-1.15.1
cd /sources
tar -xvf automake-1.15.1.tar.xz
cd automake-1.15.1
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.15.1
make
sed -i "s:./configure:LEXLIB=/usr/lib/libfl.a &:" t/lex-{clean,depend}-cxx.sh
make -j4 check
make install
cd /sources
rm -rf automake-1.15.1
