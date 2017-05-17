#!/bin/bash




sudo touch "/etc/lightdm/lightdm.conf"
echo "# Manually enable guest sessions despite them not being confined" >> /etc/lightdm/lightdm.conf
echo "# IMPORTANT: Makes the system vulnerable to CVE-2017-8900" >> /etc/lightdm/lightdm.conf
echo "# https://bugs.launchpad.net/bugs/1663157" >> /etc/lightdm/lightdm.conf
echo "[Seat:*]" >> /etc/lightdm/lightdm.conf
echo "allow-guest=true" >> /etc/lightdm/lightdm.conf