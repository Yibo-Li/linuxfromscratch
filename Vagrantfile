# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/xenial64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
    lfsDisk = "lfs.vdi"
    vb.name = "lfs"
    if not File.exist?(lfsDisk)
      vb.customize ['createhd', '--filename', lfsDisk, '--size', 40 * 1024]
    end
    vb.customize ['storageattach', :id,  '--storagectl', 'SCSI', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', lfsDisk]
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    # 2.2. Host System Requirements
    sudo su
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
    su - lfs
    echo $LFS

  SHELL
end
