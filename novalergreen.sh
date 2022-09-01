
#!/bin/sh
#

wget -O /var/volatile/tmp/novalergreen-v3.4px.tar.gz "https://onedrive.live.com/download?cid=C83DE969086F8746&resid=C83DE969086F8746%21917&authkey=AC88APJAGEsi5Yw"

echo ""
# Download and install plugin
cd /tmp
set -e
echo "===> Downloading And Installing  plugin Please Wait ......"
echo
tar -xzf novalergreen-v3.4px.tar.gz -C /
set +e
rm -f novalergreen-v3.4px.tar.gz

echo ""
sync
echo "##############################################################"
echo "#         SKIN INSTALLED SUCCESSFULLY             #"
echo "#             UPLOADED BY ELIESAT                #"
echo "##############################################################"
echo "**************************************************************"
echo "##############################################################"
echo "#              RESTART YOUR STB NOW                  #"
echo "##############################################################"

exit 0


















































































