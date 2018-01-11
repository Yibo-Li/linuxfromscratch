#!/bin/bash
# 6.38. Expat-2.2.3
cd /sources
tar -xvf expat-2.2.3.tar.bz2
cd expat-2.2.3
sed -i 's|usr/bin/env |bin/|' run.sh.in
./configure --prefix=/usr --disable-static
make
make check
make install
install -v -dm755 /usr/share/doc/expat-2.2.3
install -v -m644 doc/*.{html,png,css} /usr/share/doc/expat-2.2.3
cd /sources
rm -rf expat-2.2.3
