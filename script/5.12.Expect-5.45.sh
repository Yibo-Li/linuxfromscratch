#!/bin/bash
# 5.12. Expect-5.45
cd $LFS/sources
tar -xvf expect5.45.tar.gz
cd expect5.45
cp -v configure{,.orig}
sed 's:/usr/local/bin:/bin:' configure.orig > configure
./configure --prefix=/tools       \
            --with-tcl=/tools/lib \
            --with-tclinclude=/tools/include
make
make test
make SCRIPTS="" install
cd $LFS/sources
rm -rf expect5.45
