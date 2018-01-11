#!/bin/bash
# 6.58. IPRoute2-4.12.0
cd /sources
tar -xvf iproute2-4.12.0.tar.xz
cd iproute2-4.12.0
sed -i /ARPD/d Makefile
sed -i 's/arpd.8//' man/man8/Makefile
rm -v doc/arpd.sgml
sed -i 's/m_ipt.o//' tc/Makefile
make
make DOCDIR=/usr/share/doc/iproute2-4.12.0 install
cd /sources
rm -rf iproute2-4.12.0
