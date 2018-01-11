#!/bin/bash
# 6.22. Pkg-config-0.29.2
cd /sources
tar -xvf pkg-config-0.29.2.tar.gz
cd pkg-config-0.29.2
./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.2
make
make check
make install
cd /sources
rm -rf pkg-config-0.29.2
