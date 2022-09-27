
#!/bin/sh
#

wget -O /var/volatile/tmp/skins.tar.gz "https://drive.google.com/uc?export=download&id=1S5FlXuYR4DV_EqQncckchbKMVg169z0r"

cd /tmp
set -e
echo
tar -xzf skins.tar.gz -C /
set +e
rm -f skins.tar.gz

exit 0











































































