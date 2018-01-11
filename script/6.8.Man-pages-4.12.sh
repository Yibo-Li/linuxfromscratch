#!/bin/bash
# 6.8. Man-pages-4.12
cd /sources
tar -xvf man-pages-4.12.tar.xz
cd man-pages-4.12
make install
cd /sources
rm -rf man-pages-4.12
