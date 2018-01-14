#!/bin/bash
# 6.41. XMLParser-2.44
cd /sources
tar -xvf XML-Parser-2.44.tar.gz
cd XML-Parser-2.44
perl Makefile.PL
make
make test
make install
cd /sources
rm -rf XML-Parser-2.44
