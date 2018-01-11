#!/bin/bash
# 6.68. Tar-1.29
cd /sources
tar -xvf tar-1.29.tar.xz
cd tar-1.29
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin
make
make check
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.29
cd /sources
rm -rf tar-1.29
