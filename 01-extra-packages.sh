#!/bin/sh

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

## basic extra package for troubleshooting and data copy and mangement
apt-get -y install git mc iptraf screen vim ethtool net-tools  wget elinks dos2unix arping dnsutils telnet ipmitool

## php only cli tool for fast and easy scrpting and management scripts
apt-get -y install php-cli

#command line sendemail tool using command line in script
apt-get -y install sendemail

### other Package openvswitch various-top
apt-get -y install liblocale-po-perl  libpve-network-perl ifupdown2 openvswitch-switch apt-transport-https
apt-get -y install debconf-utils pwgen iftop htop multitail lm-sensors

## For Network Data-Traffic Recorder 
apt-get -y install vnstat vnstati

##for SDN Network
## The Software Defined Network (SDN) feature allows you to create virtual networks (VNets) at the datacenter level.
apt-get -y install libpve-network-perl ifupdown2 frr frr-pythontools
echo "" >> /etc/network/interfaces
echo "source /etc/network/interfaces.d/*" >> /etc/network/interfaces

# for wireguard vpn
#apt-get -y wireguard  wireguard-tools curl qrencode iptables jq bsdmainutils sudo

## wriguard kernel modelu if not on VM
#wireguard-dkms linux-headers-$(uname -r)

## DNS resolv for WireGuard Client
##openresolv


## wireguard guide
##https://www.linuxbabe.com/debian/wireguard-vpn-server-debian

# ensure ipv4 forwarding is enabled
#sed -i 's/#* *net.ipv4.ip_forward=.*/net.ipv4.ip_forward=1/g' /etc/sysctl.conf


## VXLAN IPSEC Encryption
## If you need to add encryption on top of a VXLAN, it’s possible to do so with IPSEC, through strongswan.
## You’ll need to reduce the MTU by 60 bytes (IPv4) or 80 bytes (IPv6) to handle encryption.
## So with default real 1500 MTU, you need to use a MTU of 1370 (1370 + 80 (IPSEC) + 50 (VXLAN) == 1500).
#apt install strongswan

##Suricata IPS integration
##If you want to use the Suricata IPS (Intrusion Prevention System), it’s possible.
##Packets will be forwarded to the IPS only after the firewall ACCEPTed them.
# apt-get install suricata
# modprobe nfnetlink_queue

## only if planned for cloud-init pve
##apt-get install cloud-init

## keep ceph default package installed
echo 'Y' | pveceph install

## https://pve.proxmox.com/wiki/Ceph_Pacific_to_Quincy

#sed -i 's/pacific/quincy/' /etc/apt/sources.list.d/ceph.list

apt update
apt -y full-upgrade

