#!/bin/bash
$LFS/lfs-prepare.sh
sudo -E -u root /bin/bash - << EOF
$LFS/script/5.37.Changing-Ownership.sh
$LFS/script/6.2.Preparing-Virtual-Kernel-File-Systems.sh
chroot "$LFS" /tools/bin/env -i \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='\u:\w\$ '              \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin \
    MAKEFLAGS='-j 2' \
    /tools/bin/bash --login +h  \
    -c "sh /lfs-build.sh"
chroot "$LFS" /usr/bin/env -i              \
    HOME=/root TERM="$TERM" PS1='\u:\w\$ ' \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin     \
    MAKEFLAGS='-j 2' \
    /bin/bash --login                      \
    -c "/lfs-config.sh"
EOF
