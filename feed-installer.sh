opkg install wget
echo "#####################################"
echo ":====> installing feed please wait..."
echo "#####################################"
sleep 10s

wget -O /etc/opkg/join93-pro-feed.conf https://gitfront.io/r/eliesat/xeFZ1oNY38TL/pro/raw/feed/join93-pro-feed.conf

PYTHON_VERSION=$(python -c"import sys; print(sys.version_info.major)")

echo "#############################################"
echo ":====> updating feeds packages please wait... "
echo "#############################################"
sleep 10s
opkg update


echo "#############################################"
echo ":====> upgrading image please wait..."
echo "#############################################"
sleep 10s
opkg upgrade



echo "####################################"
echo ":====> updating tools please wait..."
echo "####################################"
sleep 10s
   opkg install p7zip
   opkg install wget 
   opkg install curl
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
   opkg install livestreamersrv
   opkg install duktape
   opkg install f4mdump
   opkg install rtmpdump
   opkg install hlsdl
   opkg install alsa-utils-aplay
   wget https://gitfront.io/r/eliesat/5mUCVmjzCfHR/eliesat/raw/astra-sm/installer.sh -O - | /bin/sh

if [ "$PYTHON_VERSION" -eq 3 ]; then
echo ":You Have Python3 Image ..."
sleep 10 
clear
   opkg install python3-lzma
   opkg install python3-lxml 
   opkg install python3-requests  
   opkg install python3-beautifulsoup4   
   opkg install python3-cfscrape 
   opkg install livestreamersrv 
   opkg install python3-six 
   opkg install python3-sqlite3 
   opkg install python3-pycrypto 
   opkg install f4mdump 
   opkg install python3-image  
   opkg install python3-imaging
   opkg install python3-argparse 
   opkg install python3-multiprocessing
   opkg install python3-mmap 
   opkg install python3-ndg-httpsclient  
   opkg install python3-pydoc 
   opkg install python3-xmlrpc
   opkg install python3-certifi 
   opkg install python3-urllib3 
   opkg install python3-chardet
   opkg install python3-pysocks 
   opkg install python3-js2py 
   opkg install python3-pillow
   opkg install python3-pyexecjs
   
else 

echo ":You Have Python2 Image ..."
sleep 10 
clear
opkg install python-lzma
   opkg install python-lxml 
   opkg install python-requests  
   opkg install python-beautifulsoup4   
   opkg install python-cfscrape 
   opkg install python-six 
   opkg install python-sqlite3 
   opkg install python-pycrypto 
   opkg install python-image  
   opkg install python-imaging
   opkg install python-argparse 
   opkg install python-multiprocessing
   opkg install python-mmap 
   opkg install python-ndg-httpsclient  
   opkg install python-pydoc 
   opkg install python-xmlrpc
   opkg install python-certifi 
   opkg install python-urllib3 
   opkg install python-chardet
   opkg install python-pysocks 
   opkg install python-js2py 
   opkg install python-pillow
   opkg install python-pyexecjs
fi
if grep -qs -i "openpli" /etc/issue; then
wget https://gitfront.io/r/eliesat/xeFZ1oNY38TL/pro/raw/encryption/oscam-installer.sh -O - | /bin/sh
wait
opkg install --force-overwrite  https://raw.githubusercontent.com/join93/backup/main/enigma2-plugin-softcams-support_2-r0.2_all.ipk
fi
echo "############################################"
echo ":====> your device will reboot now enjoy...
>>>>         ELIESAT    <<<<"
echo "############################################"
sleep 10s
init 4
sleep 1
init 3
exit 0











































































































