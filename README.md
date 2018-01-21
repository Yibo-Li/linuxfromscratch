# Linux From Scratch

This is a [Vagrant](https://www.vagrantup.com/) building process for [Linux From Scratch](http://www.linuxfromscratch.org/lfs/).

Before the tour of lfs building, you need install [VirtualBox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/) on your PC.

Clone or download this repository and change to the repository folder in the command line.

```bash
$ git clone https://github.com/Yibo-Li/linuxfromscratch.git
Cloning into 'linuxfromscratch'...
...
$ cd linuxfromscratch && ls .
LFS-BOOK-8.1.pdf  lfs-config.sh*   README.md  sources/     Vagrantfile
lfs-build.sh*     lfs-prepare.sh*  script/    vagrant.sh*  version-check.sh*
```

Run `vagrant up` to start and provision the vagrant environment using [ubuntu/xenial64](https://app.vagrantup.com/ubuntu/boxes/xenial64). The process may spend a long time around decade minutes, because of downloading the os image and essential software.

```bash
$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'ubuntu/xenial64'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'ubuntu/xenial64' is up to date...
==> default: Setting the name of the VM: lfs
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
...
```

When the vagrant environment is ready, log in as lfs and open a tmux session to prevent terminal close unexpectedly.

```bash
$ vagrant ssh -- -l lfs
Welcome to Ubuntu 16.04.3 LTS (GNU/Linux 4.4.0-109-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

18 packages can be updated.
13 updates are security updates.

*** System restart required ***
Last login: Sat Jan 20 17:45:23 2018 from 10.0.2.2
lfs@ubuntu-xenial:~$ tmux new -s work
...
```

Test the environment variables `$LFS` and `$LFS_TGT` are `/mnt/lfs` and `x86_64-lfs-linux-gnu`, respectively. Besides the mount result is same as bellow.

```bash
lfs@ubuntu-xenial:~$ echo $LFS
/mnt/lfs
lfs@ubuntu-xenial:~$ echo $LFS_TGT
x86_64-lfs-linux-gnu
lfs@ubuntu-xenial:~$ lsblk
NAME   MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
sda      8:0    0  10G  0 disk
`-sda1   8:1    0  10G  0 part /
sdb      8:16   0  10M  0 disk
sdc      8:32   0  40G  0 disk
|-sdc1   8:33   0  32G  0 part /mnt/lfs
`-sdc2   8:34   0   8G  0 part [SWAP]
```

The next is central commands to build the lfs.

```bash
lfs@ubuntu-xenial:~$ $LFS/lfs-prepare.sh
...
lfs@ubuntu-xenial:~$ sudo -E -u root /bin/bash - <<EOF
export
$LFS/script/5.37.Changing-Ownership.sh
$LFS/script/6.2.Preparing-Virtual-Kernel-File-Systems.sh
chroot "$LFS" /tools/bin/env -i \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='\u:\w\$ '              \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin \
    /tools/bin/bash --login +h  \
    -c "sh /lfs-build.sh"
chroot "$LFS" /usr/bin/env -i              \
    HOME=/root TERM="$TERM" PS1='\u:\w\$ ' \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin     \
    /bin/bash --login                      \
    -c "/lfs-config.sh"
EOF
...
```

After hours of building shut down the vagrant environment and there is a virtual disk named lfs.vdi, which contains the lfs root and swap partitions.

```bash
lfs@ubuntu-xenial:~$ sudo shutdown -h now
...
$ ls .
lfs.vdi           lfs-build.sh*   lfs-prepare.sh*  script/   ubuntu-xenial-16.04-cloudimg-console.log  Vagrantfile
LFS-BOOK-8.1.pdf  lfs-config.sh*  README.md        sources/  vagrant.sh*                               version-check.sh*
```

Finally, create a new virtual box computer using the `lfs.vdi` virtual disk file.
And power on this new computer to log in the lfs system as root with an empty password.

In short, all above steps can be done with the three commands quickly.
```bash
vagrant up
vagrant ssh -- -l lfs 'sh /vagrant/one-click.sh'
vagrant halt
```
