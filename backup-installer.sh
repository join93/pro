#!/bin/sh
 
echo "########################################"
echo ":====> Downloading Backup Please Wait..."
echo "########################################"
sleep 10s
#!/bin/sh
#

wget -O /var/volatile/tmp/backup.tar.gz "https://onedrive.live.com/download?cid=C83DE969086F8746&resid=C83DE969086F8746%211111&authkey=ALd4Dh1SZlDrDJo"

echo "#######################################"
echo ":====> Installing Backup Almost Done... "
echo "#######################################"

sleep 10s

init 2
echo "" # Download and install plugin 
cd /tmp 
set -e 
echo "===> Downloading And Installing backup plugin Please Wait ......" echo 
tar -xzf backup.tar.gz -C / 
set +e 
init 4; sleep 5; init 3 





















































