#!/bin/bash
# 5.6. Linux-4.12.7 API Headers
cd $LFS/sources
tar -xvf linux-4.12.7.tar.xz
cd linux-4.12.7
make mrproper
make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include
cd $LFS/sources
rm -rf linux-4.12.7
