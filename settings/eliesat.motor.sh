#!/bin/sh
##

version=26.01.2023

echo "===> Downloading  ElieSat Motor Channels List "$version" Please Wait ......"
sleep 10s

wget -O /var/volatile/tmp/eliesat.motor-$"version".tar.gz "https://gitfront.io/r/eliesat/xeFZ1oNY38TL/pro/raw/settings/eliesat.motor-"$version".tar.gz"

echo ""


rm -rf /etc/enigma2/lamedb
rm -rf /etc/enigma2/*list
rm -rf /etc/enigma2/*.tv
rm -rf /etc/enigma2/*.radio
rm -rf /etc/tuxbox/*.xml


cd /tmp
set -e

echo "===> Installing  ElieSat Motor Channels List "$version" Please Wait ......"
sleep 10s
echo
tar -xvf eliesat.motor-$"version".tar.gz -C /
set +e
rm -f eliesat.motor-$"version".tar.gz
echo
echo "   >>>>   Reloading Services - Please Wait   <<<<"
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 > /dev/null 2>&1
sleep 2
echo
init 3

echo ""
sync
echo "##############################################################"
echo "#       CHANNELS INSTALLED SUCCESSFULLY             #"
echo "#             UPLOADED BY ELIESAT                   #"
echo "##############################################################"
echo "**************************************************************"
echo "##############################################################"
echo "#              RESTART YOUR STB NOW                  #"
echo "##############################################################"

exit 0















































































