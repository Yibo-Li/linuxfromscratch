#!/bin/bash
# 5.11. Tcl-core-8.6.7
cd $LFS/sources
tar -xvf tcl-core8.6.7-src.tar.gz
cd tcl8.6.7
cd unix
./configure --prefix=/tools
make
TZ=UTC make test
make install
chmod -v u+w /tools/lib/libtcl8.6.so
make install-private-headers
ln -sv tclsh8.6 /tools/bin/tclsh
cd $LFS/sources
rm -rf tcl8.6.7
