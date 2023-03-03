# config #
image='openblackhole'
version='4.4'

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


if [[ "$BOXNAME" == "vuzero4k" ]];then
wget -O openbh-4.4-vuzero4k-release_usb.zip https://images.openbh.net/latest/4.4/vuzero4k


elif [[ "$BOXNAME" == "vuuno4k" ]];then
wget -O openbh-4.4-vuuno4k-release_usb.zip https://images.openbh.net/latest/4.4/vuuno4k
  

elif [[ "$BOXNAME" == "vuuno4kse" ]];then 
wget -O openbh-4.4-vuuno4kse-release_usb.zip https://images.openbh.net/latest/4.4/vuuno4kse


elif [[ "$BOXNAME" == "vuduo4k" ]];then
wget -O openbh-4.4-vuduo4k-release_usb.zip https://images.openbh.net/latest/4.4/vuduo4k 


elif [[ "$BOXNAME" == "vuduo4kse" ]];then
wget -O openbh-4.4-vuduo4kse-release_usb.zip https://images.openbh.net/latest/4.4/vuduo4kse  


elif [[ "$BOXNAME" == "vusolo4k" ]];then
wget -O openbh-4.4-vusolo4k-release_usb.zip https://images.openbh.net/latest/4.4/vusolo4k  


elif [[ "$BOXNAME" == "vuultimo4k" ]];then
wget -O openbh-4.4-vuultimo4k-release_usb.zip https://images.openbh.net/latest/4.4/vuultimo4k

set +e

else

echo ' your device is not yet supported '
echo '
list of supported devices:
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


