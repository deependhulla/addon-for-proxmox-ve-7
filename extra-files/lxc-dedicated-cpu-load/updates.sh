#!/bin/bash


/bin/cp -pRv lxcfs.service.d /etc/systemd/system/

systemctl restart lxcfs.service


