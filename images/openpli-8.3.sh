# config #
image='openpli'
version='8.3'
date='20230226'

# check media hdd #
if [  -d "/hdd/" ]; then
echo 'Downloading '$image'- '$version' Image please wait...'
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

if [[ "$BOXNAME" == "h7" ]];then
wget -O openpli-8.3-zgemmah7_multiboot.zip 'https://downloads.openpli.org/builds/h7/openpli-8.3-release-h7-'$date'_multiboot.zip'

elif [[ "$BOXNAME" == "h9" ]];then 
wget -O openpli-8.3-zgemmah9s_multiboot.zip 'https://downloads.openpli.org/builds/h9/openpli-8.3-release-h9-'$date'_usb.zip'

elif [[ "$BOXNAME" == "gbue4k" ]];then
wget 'https://downloads.openpli.org/builds/gbue4k/openpli-8.3-release-gbue4k-'$date'_usb.zip'

elif [[ "$BOXNAME" == "gbquad4k" ]];then 
wget 'https://downloads.openpli.org/builds/gbquad4k/openpli-8.3-release-gbquad4k-'$date'_usb.zip'

elif [[ "$BOXNAME" == "hd51" ]];then 
wget 'https://downloads.openpli.org/builds/hd51/openpli-8.3-release-hd51-'$date'_multiboot.zip'


elif [[ "$BOXNAME" == "vuzero4k" ]];then 
wget 'https://downloads.openpli.org/builds/vuzero4k/openpli-8.3-release-vuzero4k-'$date'_usb.zip'


elif [[ "$BOXNAME" == "vuuno4k" ]];then
wget 'https://downloads.openpli.org/builds/vuuno4k/openpli-8.3-release-vuuno4k-'$date'_usb.zip'
  

elif [[ "$BOXNAME" == "vuuno4kse" ]];then
wget 'https://downloads.openpli.org/builds/vuuno4kse/openpli-8.3-release-vuuno4kse-'$date'_usb.zip'


elif [[ "$BOXNAME" == "vuduo4k" ]];then
wget 'https://downloads.openpli.org/builds/vuduo4k/openpli-8.3-release-vuduo4k-'$date'_usb.zip' 


elif [[ "$BOXNAME" == "vuduo4kse" ]];then
wget 'https://downloads.openpli.org/builds/vuduo4kse/openpli-8.3-release-vuduo4kse-'$date'_usb.zip' 


elif [[ "$BOXNAME" == "vusolo4k" ]];then
wget 'https://downloads.openpli.org/builds/vusolo4k/openpli-8.3-release-vusolo4k-'$date'_usb.zip' 


elif [[ "$BOXNAME" == "vuultimo4k" ]];then
wget 'https://downloads.openpli.org/builds/vuultimo4k/openpli-8.3-release-vuultimo4k-'$date'_usb.zip'

elif [[ "$BOXNAME" == "multibox" ]];then
wget -O openpli-8.3-multibox_emmc.zip http://downloads.openpli.org/emmc/multibox 


elif [[ "$BOXNAME" == "multiboxse" ]];then
wget -O openpli-8.3-multiboxse_emmc.zip http://downloads.openpli.org/emmc/multiboxse 

elif [[ "$BOXNAME" == "sf8008" ]];then
wget -O openpli-8.3-sf8008_multiboot.zip http://downloads.openpli.org/emmc/sf8008

elif [[ "$BOXNAME" == "gbtrio4k" ]];then
wget -O openpli-8.3-gbtrio4k_multiboot.zip http://downloads.openpli.org/emmc/gbtrio4k

elif [[ "$BOXNAME" == "h9se" ]];then
wget -O openpli-8.3-zgemmah9sse_emmc.zip http://downloads.openpli.org/emmc/h9se

elif [[ "$BOXNAME" == "h9combo" ]];then
wget -O openpli-8.3-zgemmah9combo_emmc.zip http://downloads.openpli.org/emmc/h9combo

elif [[ "$BOXNAME" == "h9combose" ]];then
wget -O openpli-8.3-zgemmah9combose_emmc.zip http://downloads.openpli.org/emmc/h9combose

 

set +e

else

#wget -O openpli-8.3-zgemmah9combose_emmc.zip http://downloads.openpli.org/emmc/hd51

#wget https://downloads.openpli.org/builds/hd51/openpli-8.3-release-hd51-20230226_multiboot.zip


echo ' your device is not yet supported '
echo '
list of supported devices:
zgemma h7s 4k
zgemma h9s 4k
zgemma h9s se 4k
zgemma h9 twin 4k
zgemma h9 twin se 4k
gigablue ue 4k
gigablue trio 4k
gigablue quad 4k
mutant h51 4k
novaler 4k
novaler 4k se
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


