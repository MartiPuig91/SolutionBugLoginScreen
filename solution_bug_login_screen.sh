#!/bin/bash



touch "lightdm.conf"
echo "# Manually enable guest sessions despite them not being confined" >> lightdm.conf
echo "# IMPORTANT: Makes the system vulnerable to CVE-2017-8900" >> lightdm.conf
echo "# https://bugs.launchpad.net/bugs/1663157" >> lightdm.conf
echo "[Seat:*]" >> lightdm.conf
echo "allow-guest=true" >> lightdm.conf

sudo mv lightdm.conf /etc/lightdm/
