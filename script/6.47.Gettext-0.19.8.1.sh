#!/bin/bash
# 6.47. Gettext-0.19.8.1
cd /sources
tar -xvf gettext-0.19.8.1.tar.xz
cd gettext-0.19.8.1
sed -i '/^TESTS =/d' gettext-runtime/tests/Makefile.in &&
sed -i 's/test-lock..EXEEXT.//' gettext-tools/gnulib-tests/Makefile.in
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.19.8.1
make
make check
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so
cd /sources
rm -rf gettext-0.19.8.1
