#!/bin/bash
# 5.34. Util-linux-2.30.1
cd $LFS/sources
tar -xvf util-linux-2.30.1.tar.xz
cd util-linux-2.30.1
./configure --prefix=/tools                \
            --without-python               \
            --disable-makeinstall-chown    \
            --without-systemdsystemunitdir \
            --without-ncurses              \
            PKG_CONFIG=""
make
make install
cd $LFS/sources
rm -rf util-linux-2.30.1
