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

# 3.1. Introduction
mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources
cp -v /vagrant/sources/* $LFS/sources

# 4.2. Creating the $LFS/tools Directory
mkdir -v $LFS/tools
ln -sv $LFS/tools /

# 4.3. Adding the LFS User
groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs
echo -e "lfs\nlfs" | passwd lfs
chown -vR lfs:lfs $LFS/tools
chown -vR lfs:lfs $LFS/sources

# 4.4. Setting Up the Environment
cat > /home/lfs/.bash_profile << "EOF"
exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash
EOF
cat > /home/lfs/.bashrc << "EOF"
set +h
umask 022
LFS=/mnt/lfs
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/tools/bin:/bin:/usr/bin
export LFS LC_ALL LFS_TGT PATH
EOF
chown -v lfs:lfs /home/lfs/.bash_profile
chown -v lfs:lfs /home/lfs/.bashrc
