#!/bin/bash
# 6.30. Iana-Etc-2.30
cd /sources
tar -xvf iana-etc-2.30.tar.bz2
cd iana-etc-2.30
make
make install
cd /sources
rm -rf iana-etc-2.30
