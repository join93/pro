
PYTHON_VERSION=$(python -c"import sys; print(sys.version_info.major)")
####################################
####################################


if [ "$PYTHON_VERSION" -eq 3 ]; then echo ":You have Python3 image ...
install an openpli image python2 and try again ..." 
sleep 1 
clear
else echo ":You have openpli Python2 image ..." 
sleep 1 
clear
fi

####################################
#### feed install

if [ "$PYTHON_VERSION" -eq 3 ]; then 
echo " your image is not supported "

elif grep -qs -i "openpli" /etc/issue; then
echo "#########################################"
echo ":====> updating feeds packages please wait... "
echo "#############################################"
sleep 10s
opkg update


echo "#############################################"
echo ":====> upgrading openpli image please wait..."
echo "#############################################"
sleep 10s
opkg upgrade



echo "####################################"
echo ":====> updating tools please wait..."
echo "####################################"
sleep 10s
   opkg install 
   opkg install wget 
   opkg install curl  
   opkg install hlsdl
   opkg install python-lzma 
   opkg install python-lxml 
   opkg install python-requests 
   opkg install python-six 
   opkg install python-sqlite3 
   opkg install python-pycrypto 
   opkg install f4mdump 
   opkg install python-image 
   opkg install python-imaging 
   opkg install python-argparse 
   opkg install python-multiprocessing 
   opkg install python-mmap 
   opkg install python-ndg-httpsclient 
   opkg install python-pydoc python-xmlrpc 
   opkg install python-certifi 
   opkg install python-urllib3 
   opkg install python-chardet 
   opkg install python-pysocks
   opkg install python-xmlrpc unrar
   opkg install python-pyexecjs
   opkg install enigma2-plugin-systemplugins-serviceapp
    opkg install ffmpeg
    opkg install exteplayer3
    opkg install gstplayer
    opkg install openvpn
    opkg install kodi-addon-pvr-iptvsimple
    opkg update
    opkg install gstreamer1.0-plugins-good
    opkg install gstreamer1.0-plugins-ugly
    opkg install gstreamer1.0-plugins-base
    opkg install gstreamer1.0-plugins-bad
    opkg install softcam-support
    opkg install duktape
wget https://raw.githubusercontent.com/join93/pro/main/astra-sm/installer.sh -O - | /bin/sh
echo "#####################################"
echo ":====> installing feed please wait..."
echo "#####################################"
sleep 10s

wget -O /etc/opkg/join93-pro-feed.conf https://raw.githubusercontent.com/join93/pro/main/feed/join93-pro-feed.conf
else
echo "install an openpli py2 image and try again"
fi
echo "############################################"
echo ":====> your device will reboot now enjoy...
====>eliesat<===="
echo "############################################"
sleep 10s
init 4
sleep 1
init 3
sleep 2;
exit 0































































































