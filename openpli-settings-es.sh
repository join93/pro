cd /tmp 
set -e 
wget --no-check-certificate https://raw.githubusercontent.com/join93/feed/main/settings/backup.tar.gz
tar -xzf backup.tar.gz -C / 
set +e 

wait
init 4; sleep 5

BACKUP='/settings'
SETTINGS='/etc/enigma2/settings'
sed -i '/config/d' $SETTINGS
cat $BACKUP >> $SETTINGS
rm -f $BACKUP
rm -rf /tmp/backup.tar.gz >/dev/null 2>&1   
init 3
echo " "
exit
fi