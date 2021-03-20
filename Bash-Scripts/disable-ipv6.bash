#!/bin/bash
##############################################################################
# A script to Disable IPV6 for all Network Locations           #
# Written By: Will Daniel | Greenlight
##############################################################################

NetworkServices=`networksetup -listallnetworkservices`

if [[ $NetworkServices =~ "Wi-Fi" ]];then
    networksetup -setv6off Wi-Fi
    echo "IPV6 Disabled for Wi-Fi"
fi

if [[ $NetworkServices =~ "Ethernet" ]];then
    serviceName=`networksetup -listallnetworkservices | grep "Ethernet" -m 1`
    networksetup -setv6off "$serviceName"
    echo "IPV6 Disabled for $serviceName"
fi

if [[ $NetworkServices =~ "LAN" ]];then
    serviceName=`networksetup -listallnetworkservices | grep "LAN" -m 1`
    networksetup -setv6off "$serviceName"
    echo "IPV6 Disabled for $serviceName"
fi
