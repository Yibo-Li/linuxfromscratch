#!/bin/bash
# 6.46. Kmod-24
cd /sources
tar -xvf kmod-24.tar.xz
cd kmod-24
./configure --prefix=/usr          \
            --bindir=/bin          \
            --sysconfdir=/etc      \
            --with-rootlibdir=/lib \
            --with-xz              \
            --with-zlib
make
make install
for target in depmod insmod lsmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /sbin/$target
done
ln -sfv kmod /bin/lsmod
cd /sources
rm -rf kmod-24
