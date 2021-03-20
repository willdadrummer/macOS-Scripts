#!/bin/bash
##############################################################################
# A script to remove the Cisco Umbrella Uninstaller from the /Applications folder to /Library/Application\ Support/OpenDNS\ Roaming\ Client/cuecunin.app.           #
# Written By: Will Daniel | Greenlight
##############################################################################
mv /Applications/OpenDNS\ Roaming\ Client/Umbrella\ Roaming\ Client\ Uninstaller.app /Library/Application\ Support/OpenDNS\ Roaming\ Client/cuecunin.app
mv /Applications/OpenDNS\ Roaming\ Client/rcuninstall /Library/Application\ Support/OpenDNS\ Roaming\ Client/rcuninstall
rm -rf /Applications/OpenDNS\ Roaming\ Client/UmbrellaMenu.app
mkdir -p "/Library/Application Support/OpenDNS Roaming Client/"
DATA='<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>

</dict>
</plist>'
echo "$DATA" > "/Library/Application Support/OpenDNS Roaming Client/OrgInfo.plist"
killall UmbrellaMenu