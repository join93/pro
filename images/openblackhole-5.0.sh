# config #
image='openblackhole'
version='5.0'

# check media hdd #
if [  -d "/hdd/" ]; then
echo 'Downloading '$image'-'$version' Image please wait...'
sleep 10s

#create images folder #
cd /hdd
set -e
if [ ! -d "/hdd/images" ]; then
mkdir /hdd/images
set +e
fi


# check box download image #
BOXNAME=$(head -n 1 /etc/hostname)

cd /media/hdd/images/
set -e

if [[ "$BOXNAME" == "h11" ]];then 
wget -O openbh-5.0-zgemmah11s-release_multi.zip https://images.openbh.net/latest/5.0/zgemmah11s


elif [[ "$BOXNAME" == "vuzero4k" ]];then
wget -O openbh-5.0-vuzero4k-release_usb.zip https://images.openbh.net/latest/5.0/vuzero4k


elif [[ "$BOXNAME" == "vuuno4k" ]];then
wget -O openbh-5.0-vuuno4k-release_usb.zip https://images.openbh.net/latest/5.0/vuuno4k
  

elif [[ "$BOXNAME" == "vuuno4kse" ]];then 
wget -O openbh-5.0-vuuno4kse-release_usb.zip https://images.openbh.net/latest/5.0/vuuno4kse


elif [[ "$BOXNAME" == "vuduo4k" ]];then
wget -O openbh-5.0-vuduo4k-release_usb.zip https://images.openbh.net/latest/5.0/vuduo4k 


elif [[ "$BOXNAME" == "vuduo4kse" ]];then
wget -O openbh-5.0-vuduo4kse-release_usb.zip https://images.openbh.net/latest/5.0/vuduo4kse  


elif [[ "$BOXNAME" == "vusolo4k" ]];then
wget -O openbh-5.0-vusolo4k-release_usb.zip https://images.openbh.net/latest/5.0/vusolo4k  


elif [[ "$BOXNAME" == "vuultimo4k" ]];then
wget -O openbh-5.0-vuultimo4k-release_usb.zip https://images.openbh.net/latest/5.0/vuultimo4k


elif [[ "$BOXNAME" == "sf8008" ]];then
wget -O openbh-5.0-sf8008-release_mmc.zip https://images.openbh.net/latest/5.0/sf8008

set +e

else

echo ' your device is not yet supported '
echo '
list of supported devices:
zgemma h11s 4k
octagon sf8008
vu+ zero 4k
vu+ uno 4k
vu+ uno 4k se
vu+ duo 4k
vu+ duo 4k se
vu+ solo 4k
vu+ ultimo 4k
 '
fi

else
echo "Mount your external memory >media/hdd<  and try again "
fi
exit 0


