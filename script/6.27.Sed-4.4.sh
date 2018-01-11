#!/bin/bash
# 6.27. Sed-4.4
cd /sources
tar -xvf sed-4.4.tar.xz
cd sed-4.4
sed -i 's/usr/tools/'                 build-aux/help2man
sed -i 's/testsuite.panic-tests.sh//' Makefile.in
./configure --prefix=/usr --bindir=/bin
make
make html
make check
make install
install -d -m755           /usr/share/doc/sed-4.4
install -m644 doc/sed.html /usr/share/doc/sed-4.4
cd /sources
rm -rf sed-4.4
