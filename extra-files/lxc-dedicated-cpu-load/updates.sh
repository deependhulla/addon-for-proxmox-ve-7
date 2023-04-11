#!/bin/bash


/bin/cp -pRv lxcfs.service.d /etc/systemd/system/

ps auxf | grep lxcfs
date
systemctl restart lxcfs.service
date

ps auxf | grep lxcfs
