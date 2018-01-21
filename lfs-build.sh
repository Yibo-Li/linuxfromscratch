#!/bin/bash
time ( sh /script/6.5.Creating-Directories.sh && \
sh /script/6.6.Creating-Essential-Files-and-Symlinks.sh && \
/script/6.7.Linux-4.12.7-API-Headers.sh && \
/script/6.8.Man-pages-4.12.sh && \
/script/6.9.Glibc-2.26.sh && \
/script/6.10.Adjusting-the-Toolchain.sh && \
/script/6.11.Zlib-1.2.11.sh && \
/script/6.12.File-5.31.sh && \
/script/6.13.Readline-7.0.sh && \
/script/6.14.M4-1.4.18.sh && \
/script/6.15.Bc-1.07.1.sh && \
/script/6.16.Binutils-2.29.sh && \
/script/6.17.GMP-6.1.2.sh && \
/script/6.18.MPFR-3.1.5.sh && \
/script/6.19.MPC-1.0.3.sh && \
/script/6.20.GCC-7.2.0.sh && \
/script/6.21.Bzip2-1.0.6.sh && \
/script/6.22.Pkg-config-0.29.2.sh && \
/script/6.23.Ncurses-6.0.sh && \
/script/6.24.Attr-2.4.47.sh && \
/script/6.25.Acl-2.2.52.sh && \
/script/6.26.Libcap-2.25.sh && \
/script/6.27.Sed-4.4.sh && \
/script/6.28.Shadow-4.5.sh && \
/script/6.29.Psmisc-23.1.sh && \
/script/6.30.Iana-Etc-2.30.sh && \
/script/6.31.Bison-3.0.4.sh && \
/script/6.32.Flex-2.6.4.sh && \
/script/6.33.Grep-3.1.sh && \
/script/6.34.Bash-4.4.sh && \
/script/6.35.Libtool-2.4.6.sh && \
/script/6.36.GDBM-1.13.sh && \
/script/6.37.Gperf-3.1.sh && \
/script/6.38.Expat-2.2.3.sh && \
/script/6.39.Inetutils-1.9.4.sh && \
/script/6.40.Perl-5.26.0.sh && \
/script/6.41.XMLParser-2.44.sh && \
/script/6.42.Intltool-0.51.0.sh && \
/script/6.43.Autoconf-2.69.sh && \
/script/6.44.Automake-1.15.1.sh && \
/script/6.45.Xz-5.2.3.sh && \
/script/6.46.Kmod-24.sh && \
/script/6.47.Gettext-0.19.8.1.sh && \
/script/6.48.Procps-ng-3.3.12.sh && \
/script/6.49.E2fsprogs-1.43.5.sh && \
/script/6.50.Coreutils-8.27.sh && \
/script/6.51.Diffutils-3.6.sh && \
/script/6.52.Gawk-4.1.4.sh && \
/script/6.53.Findutils-4.6.0.sh && \
/script/6.54.Groff-1.22.3.sh && \
/script/6.55.GRUB-2.02.sh && \
/script/6.56.Less-487.sh && \
/script/6.57.Gzip-1.8.sh && \
/script/6.58.IPRoute2-4.12.0.sh && \
/script/6.59.Kbd-2.0.4.sh && \
/script/6.60.Libpipeline-1.4.2.sh && \
/script/6.61.Make-4.2.1.sh && \
/script/6.62.Patch-2.7.5.sh && \
/script/6.63.Sysklogd-1.5.1.sh && \
/script/6.64.Sysvinit-2.88dsf.sh && \
/script/6.65.Eudev-3.2.2.sh && \
/script/6.66.Util-linux-2.30.1.sh && \
/script/6.67.Man-DB-2.7.6.1.sh && \
/script/6.68.Tar-1.29.sh && \
/script/6.69.Texinfo-6.4.sh && \
/script/6.70.Vim-8.0.586.sh ) 2>&1 | tee /build-$(date +%Y%m%dT%H%M%S).log
exit
