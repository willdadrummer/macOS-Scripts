#!/bin/bash
##############################################################################
# A script to list IPV6 status for all Network Locations           #
# Written By: Will Daniel | Greenlight
##############################################################################

NetworkServices=`networksetup -listallnetworkservices`
if [[ $NetworkServices =~ "Wi-Fi" ]];then
    WIFI_RESULT=$(networksetup -getinfo Wi-Fi | grep IPv6)
fi

if [[ $NetworkServices =~ "Ethernet" ]];then
    serviceName=`networksetup -listallnetworkservices | grep "Ethernet" -m 1`
    ETHERNET_RESULT=$(networksetup -getinfo "$serviceName" | grep IPv6)
fi

if [[ $NetworkServices =~ "LAN" ]];then
    serviceName=`networksetup -listallnetworkservices | grep "LAN" -m 1`
    LAN_RESULT=$(networksetup -getinfo "$serviceName" | grep IPv6)
fi
echo "<result>Wi-Fi $WIFI_RESULT
Ethernet $ETHERNET_RESULT 
LAN $LAN_RESULT</result>"

