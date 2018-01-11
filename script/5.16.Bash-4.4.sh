#!/bin/bash
# 5.16. Bash-4.4
cd $LFS/sources
tar -xvf bash-4.4.tar.gz
cd bash-4.4
./configure --prefix=/tools --without-bash-malloc
make
make tests
make install
ln -sv bash /tools/bin/sh
cd $LFS/sources
rm -rf bash-4.4
