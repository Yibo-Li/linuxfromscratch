#!/bin/bash
# 6.18. MPFR-3.1.5
cd /sources
tar -xvf mpfr-3.1.5.tar.xz
cd mpfr-3.1.5
./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-3.1.5
make
make html
make check
make install
make install-html
cd /sources
rm -rf mpfr-3.1.5
