#!/usr/bin/env bash

mkdir -p /mnt/cdrom
mount -o loop ~/VBoxGuestAdditions.iso /mnt/cdrom
cd /mnt/cdrom/

yum install -y bzip2
yum install -y epel-release
yum groupinstall -y "Development Tools"
yum install -y dkms
yum install -y kernel-devel

./VBoxLinuxAdditions.run

yum remove -y kernel-devel
yum remove -y dkms
yum groupremove -y "Development Tools"
yum remove -y epel-release
yum remove -y bzip2

cd ~
umount /mnt/cdrom
rmdir /mnt/cdrom
