#!/bin/bash

if [[ $(facter virtual) =~ ^(virtualbox|kvm)$ ]] ; then
    rm /etc/udev/rules.d/70-persistent-net.rules
    mkdir /etc/udev/rules.d/70-persistent-net.rules
    rm /lib/udev/rules.d/75-persistent-net-generator.rules
    rm -rf /dev/.udev/ /var/lib/dhcp/*
    echo "pre-up sleep 2" >> /etc/network/interfaces
fi
