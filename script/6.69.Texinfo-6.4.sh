#!/bin/bash
# 6.69. Texinfo-6.4
cd /sources
tar -xvf texinfo-6.4.tar.xz
cd texinfo-6.4
./configure --prefix=/usr --disable-static
make
make check
make install
make TEXMF=/usr/share/texmf install-tex
pushd /usr/share/info
rm -v dir
for f in *
  do install-info $f dir 2>/dev/null
done
popd
cd /sources
rm -rf texinfo-6.4
