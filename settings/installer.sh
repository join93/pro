#!/bin/sh

#wget -q "--no-check-certificate" https://raw.githubusercontent.com/join93/pro/main/settings/installer.sh -O - | /bin/sh

version=1.0
#############################################################
TEMPATH=/tmp

init 2

echo ""
# Download and install plugin
cd /tmp
set -e
echo "===> Downloading And Installing settings plugin Please Wait ......"
echo
wget "https://raw.githubusercontent.com/join93/pro/main/settings/settings.tar.gz"
tar -xzf settings.tar.gz -C /
set +e
rm -f settings.tar.gz

init 4; sleep 5; init 3

echo ""
sync
echo "##############################################################"
echo "#         settings $version INSTALLED SUCCESSFULLY           #"
echo "##############################################################"
echo "**************************************************************"
echo "##############################################################"
echo "#              your Device will RESTART Now                  #"
echo "##############################################################"

exit 0
