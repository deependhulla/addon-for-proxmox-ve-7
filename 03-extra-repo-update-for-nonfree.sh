#!/bin/sh

## non-free added for installing intel
echo "" > /etc/apt/sources.list
echo "deb http://ftp.debian.org/debian bullseye main contrib non-free" >> /etc/apt/sources.list
echo "deb http://ftp.debian.org/debian bullseye-updates main contrib non-free" >> /etc/apt/sources.list
echo "deb http://security.debian.org bullseye-security main contrib non-free" >> /etc/apt/sources.list


#amd64-microcode - Processor microcode firmware for AMD CPUs
#intel-microcode - Processor microcode firmware for Intel CPUs
##As mostly we have customer on Intel 
apt-get update
apt-get -y  install intel-microcode 
