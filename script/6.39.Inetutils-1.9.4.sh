#!/bin/bash
# 6.39. Inetutils-1.9.4
cd /sources
tar -xvf inetutils-1.9.4.tar.xz
cd inetutils-1.9.4
./configure --prefix=/usr        \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers
make
make check
make install
mv -v /usr/bin/{hostname,ping,ping6,traceroute} /bin
mv -v /usr/bin/ifconfig /sbin
cd /sources
rm -rf inetutils-1.9.4
