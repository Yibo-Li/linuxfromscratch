#!/bin/bash
# 6.66. Util-linux-2.30.1
cd /sources
tar -xvf util-linux-2.30.1.tar.xz
cd util-linux-2.30.1
mkdir -pv /var/lib/hwclock
./configure ADJTIME_PATH=/var/lib/hwclock/adjtime   \
            --docdir=/usr/share/doc/util-linux-2.30.1 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            --without-systemd    \
            --without-systemdsystemunitdir
make
chown -Rv nobody .
su nobody -s /bin/bash -c "PATH=$PATH make -k check"
make install
cd /sources
rm -rf util-linux-2.30.1
