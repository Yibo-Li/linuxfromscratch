#!/bin/bash
# 2.2. Host System Requirements
sed -i 's|http://archive.|http://cn.archive.|g' /etc/apt/sources.list
apt-get update
apt-get install -y build-essential bison texinfo
ln -fs bash /bin/sh
/vagrant/version-check.sh

# 2.4. Creating a New Partition
parted -a optimal /dev/sdc mklabel msdos
parted -a optimal /dev/sdc mkpart primary 0% 32GiB
parted -a optimal /dev/sdc mkpart primary 32GiB 100%
# 2.5. Creating a File System on the Partition
mkfs -v -t ext4 /dev/sdc1
mkswap /dev/sdc2

# 2.6. Setting The $LFS Variable
export LFS=/mnt/lfs
# 2.7. Mounting the New Partition
mkdir -pv $LFS
mount -v -t ext4 /dev/sdc1 $LFS
/sbin/swapon -v /dev/sdc2
cat >> /etc/fstab << EOF
/dev/sdc1 $LFS ext4 defaults 0 0
/dev/sdc2 none swap defaults 0 0
EOF

# 3.1. Introduction
mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources
cp -rv /vagrant/sources $LFS
cp -rv /vagrant/script $LFS
cp -v /vagrant/lfs-{prepare,build,config}.sh $LFS

# 4.2. Creating the $LFS/tools Directory
mkdir -v $LFS/tools
ln -sv $LFS/tools /

# 4.3. Adding the LFS User
groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs
cp -rv /home/vagrant/.ssh /home/lfs
chown -vR lfs:lfs $LFS
chown -vR lfs:lfs /home/lfs/.ssh
cat > /etc/sudoers.d/lfs << EOF
lfs ALL=(ALL) NOPASSWD:ALL
EOF
chmod -v 440 /etc/sudoers.d/lfs

# 4.4. Setting Up the Environment
cat > /home/lfs/.bash_profile << EOF
exec env -i HOME=/home/lfs TERM=xterm-256color PS1='\u:\w\$ ' /bin/bash
EOF
cat > /home/lfs/.bashrc << EOF
set +h
umask 022
LFS=$LFS
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/tools/bin:/bin:/usr/bin
MAKEFLAGS='-j 2'
export LFS LC_ALL LFS_TGT PATH MAKEFLAGS
EOF
chown -v lfs:lfs /home/lfs/.bash_profile
chown -v lfs:lfs /home/lfs/.bashrc
