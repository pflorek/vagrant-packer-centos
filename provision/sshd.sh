#!/usr/bin/env bash

sed -i "s/^#*\s*RSAAuthentication.*/RSAAuthentication yes/" /etc/ssh/sshd_config
sed -i "s/^#*\s*PubkeyAuthentication.*/PubkeyAuthentication yes/" /etc/ssh/sshd_config
sed -i "s/^#*\s*PermitRootLogin.*/PermitRootLogin yes/" /etc/ssh/sshd_config
sed -i "s/^#*\s*UseDNS.*/UseDNS no/" /etc/ssh/sshd_config
sed -i "s/^#*\s*GSSAPIAuthentication.*/GSSAPIAuthentication no/" /etc/ssh/sshd_config

mkdir -p /home/vagrant/.ssh/
yum install -y wget
wget --no-check-certificate https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -O /home/vagrant/.ssh/authorized_keys

chmod 700 /home/vagrant/.ssh/
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh/
