#!/bin/bash
time ( $LFS/script/5.4.Binutils-2.29-Pass-1.sh && \
$LFS/script/5.5.GCC-7.2.0-Pass-1.sh && \
$LFS/script/5.6.Linux-4.12.7-API-Headers.sh && \
$LFS/script/5.7.Glibc-2.26.sh && \
$LFS/script/5.8.Libstdc++-7.2.0.sh && \
$LFS/script/5.9.Binutils-2.29-Pass-2.sh && \
$LFS/script/5.10.GCC-7.2.0-Pass-2.sh && \
$LFS/script/5.11.Tcl-core-8.6.7.sh && \
$LFS/script/5.12.Expect-5.45.sh && \
$LFS/script/5.13.DejaGNU-1.6.sh && \
$LFS/script/5.14.Check-0.11.0.sh && \
$LFS/script/5.15.Ncurses-6.0.sh && \
$LFS/script/5.16.Bash-4.4.sh && \
$LFS/script/5.17.Bison-3.0.4.sh && \
$LFS/script/5.18.Bzip2-1.0.6.sh && \
$LFS/script/5.19.Coreutils-8.27.sh && \
$LFS/script/5.20.Diffutils-3.6.sh && \
$LFS/script/5.21.File-5.31.sh && \
$LFS/script/5.22.Findutils-4.6.0.sh && \
$LFS/script/5.23.Gawk-4.1.4.sh && \
$LFS/script/5.24.Gettext-0.19.8.1.sh && \
$LFS/script/5.25.Grep-3.1.sh && \
$LFS/script/5.26.Gzip-1.8.sh && \
$LFS/script/5.27.M4-1.4.18.sh && \
$LFS/script/5.28.Make-4.2.1.sh && \
$LFS/script/5.29.Patch-2.7.5.sh && \
$LFS/script/5.30.Perl-5.26.0.sh && \
$LFS/script/5.31.Sed-4.4.sh && \
$LFS/script/5.32.Tar-1.29.sh && \
$LFS/script/5.33.Texinfo-6.4.sh && \
$LFS/script/5.34.Util-linux-2.30.1.sh && \
$LFS/script/5.35.Xz-5.2.3.sh ) 2>&1 | tee $LFS/build-$(date +%Y%m%dT%H%M%S).log
