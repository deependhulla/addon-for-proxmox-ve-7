#!/bin/sh

apt-get update

## basic extra package for troubleshooting and data copy and mangement
apt-get -y install git mc iptraf screen vim ethtool net-tools sshfs wget elinks dos2unix dnsutils

## php only cli tool for fast and easy scrpting
apt-get -y install php-cli

#command line sendemail tool
apt-get -y install sendemail


