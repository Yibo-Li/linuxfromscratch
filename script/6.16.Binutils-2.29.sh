#!/bin/bash
# 6.16. Binutils-2.29
cd /sources
tar -xvf binutils-2.29.tar.bz2
cd binutils-2.29
expect -c "spawn ls"
mkdir -v build
cd       build
../configure --prefix=/usr       \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --with-system-zlib
make tooldir=/usr
make -k check
make tooldir=/usr install
cd /sources
rm -rf binutils-2.29
