#!/bin/bash
# 6.34. Bash-4.4
cd /sources
tar -xvf bash-4.4.tar.gz
cd bash-4.4
patch -Np1 -i ../bash-4.4-upstream_fixes-1.patch
./configure --prefix=/usr                       \
            --docdir=/usr/share/doc/bash-4.4 \
            --without-bash-malloc               \
            --with-installed-readline
make
chown -Rv nobody .
su nobody -s /bin/bash -c "PATH=$PATH make tests"
make install
mv -vf /usr/bin/bash /bin
cd /sources
rm -rf bash-4.4
