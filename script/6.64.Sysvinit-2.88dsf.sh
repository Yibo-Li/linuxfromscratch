#!/bin/bash
# 6.64. Sysvinit-2.88dsf
cd /sources
tar -xvf sysvinit-2.88dsf.tar.bz2
cd sysvinit-2.88dsf
patch -Np1 -i ../sysvinit-2.88dsf-consolidated-1.patch
make -C src
make -C src install
cd /sources
rm -rf sysvinit-2.88dsf
