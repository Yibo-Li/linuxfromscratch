#!/bin/bash
# 6.7. Linux-4.12.7 API Headers
cd /sources
tar -xvf linux-4.12.7.tar.xz
cd linux-4.12.7
make mrproper
make INSTALL_HDR_PATH=dest headers_install
find dest/include \( -name .install -o -name ..install.cmd \) -delete
cp -rv dest/include/* /usr/include
cd /sources
rm -rf linux-4.12.7
