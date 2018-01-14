#!/bin/bash
# 8.4. Using GRUB to Set Up the Boot Process
grub-install /dev/sdc
cat > /boot/grub/grub.cfg << "EOF"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod ext2
set root=(hd0,1)

menuentry "GNU/Linux, Linux 4.12.7-lfs-8.1" {
        linux   /boot/vmlinuz-4.12.7-lfs-8.1 root=/dev/sda1 ro
}
EOF
