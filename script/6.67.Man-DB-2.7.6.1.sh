#!/bin/bash
# 6.67. Man-DB-2.7.6.1
cd /sources
tar -xvf man-db-2.7.6.1.tar.xz
cd man-db-2.7.6.1
./configure --prefix=/usr                        \
            --docdir=/usr/share/doc/man-db-2.7.6.1 \
            --sysconfdir=/etc                    \
            --disable-setuid                     \
            --enable-cache-owner=bin             \
            --with-browser=/usr/bin/lynx         \
            --with-vgrind=/usr/bin/vgrind        \
            --with-grap=/usr/bin/grap            \
            --with-systemdtmpfilesdir=
make
make check
make install
cd /sources
rm -rf man-db-2.7.6.1
