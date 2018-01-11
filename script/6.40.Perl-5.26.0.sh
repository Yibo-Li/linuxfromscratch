#!/bin/bash
# 6.40. Perl-5.26.0
cd /sources
tar -xvf perl-5.26.0.tar.xz
cd perl-5.26.0
echo "127.0.0.1 localhost $(hostname)" > /etc/hosts
export BUILD_ZLIB=False
export BUILD_BZIP2=0
sh Configure -des -Dprefix=/usr                 \
                  -Dvendorprefix=/usr           \
                  -Dman1dir=/usr/share/man/man1 \
                  -Dman3dir=/usr/share/man/man3 \
                  -Dpager="/usr/bin/less -isR"  \
                  -Duseshrplib                  \
                  -Dusethreads
make
make -k testmake install
unset BUILD_ZLIB BUILD_BZIP2
cd /sources
rm -rf perl-5.26.0
