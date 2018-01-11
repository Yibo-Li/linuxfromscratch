#!/bin/bash
# 6.36. GDBM-1.13
cd /sources
tar -xvf gdbm-1.13.tar.gz
cd gdbm-1.13
./configure --prefix=/usr \
            --disable-static \
            --enable-libgdbm-compat
make
make check
make install
cd /sources
rm -rf gdbm-1.13
