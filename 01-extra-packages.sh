#!/bin/sh

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

## basic extra package for troubleshooting and data copy and mangement
apt-get -y install git mc iptraf screen vim ethtool net-tools  wget elinks dos2unix dnsutils telnet ipmitool

## php only cli tool for fast and easy scrpting
apt-get -y install php-cli

#command line sendemail tool
apt-get -y install sendemail

### other Package if needed
#apt-get install suricata liblocale-po-perl  libpve-network-perl ifupdown2 openvswitch-switch apt-transport-https
#apt-get install debconf-utils pwgen iftop htop multitail lm-sensors
#apt-get install vnstat vnstati

##for SDN Network
apt install libpve-network-perl ifupdown2 frr frr-pythontools
echo "" >> /etc/network/interfaces
echo "source /etc/network/interfaces.d/*" >> /etc/network/interfaces


## only if planned for cloud-init pve
##apt-get install cloud-init


