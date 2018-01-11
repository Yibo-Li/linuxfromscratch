#!/bin/bash
# 6.19. MPC-1.0.3
cd /sources
tar -xvf mpc-1.0.3.tar.gz
cd mpc-1.0.3
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.0.3
make
make html
make check
make install
make install-html
cd /sources
rm -rf mpc-1.0.3
