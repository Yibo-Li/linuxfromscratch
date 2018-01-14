#!/bin/bash
# 8.3. Linux-4.12.7
cd /sources
tar -xvf linux-4.12.7.tar.xz
cd linux-4.12.7
make mrproper
make defconfig
make
make modules_install
cp -v arch/x86/boot/bzImage /boot/vmlinuz-4.12.7-lfs-8.1
cp -v System.map /boot/System.map-4.12.7
cp -v .config /boot/config-4.12.7
install -d /usr/share/doc/linux-4.12.7
cp -r Documentation/* /usr/share/doc/linux-4.12.7
tar -cvf /linux.tar -C /sources linux-4.12.7
install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF
cd /sources
rm -rf linux-4.12.7
