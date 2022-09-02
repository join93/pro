#!/bin/sh

#wget -q "--no-check-certificate" https://raw.githubusercontent.com/join93/pro/main/feeds-runner.sh -O - | /bin/sh  -O - | /bin/sh

#### check operating system ####

if [ -f /etc/apt/apt.conf ] ; then
    STATUS='/var/lib/dpkg/status'
    OS='DreamOS'
elif [ -f /etc/opkg/opkg.conf ] ; then
   STATUS='/var/lib/opkg/status'
   OS='Opensource'

#### check python version ####
echo "=========================================================================="

if [ "$PYTHON_VERSION" == 3.9.9 -o "$PYTHON_VERSION" == 3.9.7 -o "$PYTHON_VERSION" == 3.9.6 -o "$PYTHON_VERSION" == 3.8.5 ]; then
    echo ":You have $PYTHON_VERSION image ..."
PYTHON='PY3
echo "=========================================================================="
elif [ "$PYTHON_VERSION" == 3.10.4 -o
echo ":You have $PYTHON_VERSION image ..."
PYTHON='PY3.1
echo "=========================================================================="
else
echo "You have Python2 image"    PYTHON='PY2'
echo "=========================================================================="
fi
  
#### installing  eliesat feed

if [ OS='DreamOS' ];

echo " your device is not supported

fi

if [ OS='Opensource' ];then

elif [ "$PYTHON" = "PY2" ]; then
       wget -O /var/volatile/tmp/py2.0.tar.gz "https://onedrive.live.com/download?cid=C83DE969086F8746&resid=C83DE969086F8746%21911&authkey=AMTiBlPckqOS-dc"

echo ""
# Download and install feed
cd /tmp
set -e
echo "===> Downloading And Installing  feed Pease Wait ......"
echo
tar -xzf py2.0.tar.gz -C /
set +e
rm -f py2.0.tar.gz

echo ""
echo "#########################################################"
echo "#     FEED INSTALLED SUCCESSFULLY          #"
echo "#                    BY ELIESAT                        #"
echo "#########################################################"

else

echo " under maintenance
"
fi

exit 0
