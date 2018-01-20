# linuxfromscratch

vagrant up
vagrant ssh -- -l lfs 
tmux new -s work

echo $LFS
echo $LFS_TGT
lsblk
$LFS/lfs-prepare.sh

sudo -E -u root /bin/bash - <<EOF
export
$LFS/script/5.37.Changing-Ownership.sh
$LFS/script/6.2.Preparing-Virtual-Kernel-File-Systems.sh
chroot "$LFS" /tools/bin/env -i \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='\u:\w\$ '              \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin \
    /tools/bin/bash --login +h  \
    -c "/lfs-build.sh"
chroot "$LFS" /usr/bin/env -i              \
    HOME=/root TERM="$TERM" PS1='\u:\w\$ ' \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin     \
    /bin/bash --login                      \
    -c "/lfs-config.sh"
EOF

shutdown -h now
