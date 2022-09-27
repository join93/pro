
#!/bin/sh
#

wget -O /var/volatile/tmp/skins.tar.gz "https://onedrive.live.com/download?cid=C83DE969086F8746&resid=C83DE969086F8746%211038&authkey=AMtMBofcAw-cfOo"

cd /tmp
set -e
echo
tar -xzf skins.tar.gz -C /
set +e
rm -f skins.tar.gz

exit 0











































































