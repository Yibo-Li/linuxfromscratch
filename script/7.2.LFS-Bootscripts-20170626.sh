#!/bin/bash
# 7.2. LFS-Bootscripts-20170626
cd /sources
tar -xvf lfs-bootscripts-20170626.tar.bz2
cd lfs-bootscripts-20170626
make install
cd /sources
rm -rf lfs-bootscripts-20170626
