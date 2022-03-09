#!/bin/sh

echo "deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > /etc/apt/sources.list.d/pve-enterprise.list

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

