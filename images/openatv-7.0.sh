# config #
image='openatv'
version='7.0'

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

if [[ "$BOXNAME" == "h7" ]];then
wget -O openatv-7.0-zgemmah7-release_multi.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=zgemmah7

elif [[ "$BOXNAME" == "h9" ]];then 
wget -O openatv-7.0-zgemmah9s_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=zgemmah9s

elif [[ "$BOXNAME" == "h9se" ]];then 
wget -O openatv-7.0-zgemmah9s_multi.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=zgemmah9sse

elif [[ "$BOXNAME" == "h9combo" ]];then 
wget -O openatv-7.0-zgemmah9s_multi.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=zgemmah9twin

elif [[ "$BOXNAME" == "h9combose" ]];then
wget -O openatv-7.0-zgemmahtwinse-release_multi.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=zgemmah9twinse



elif [[ "$BOXNAME" == "h11" ]];then 
wget -O openatv-7.0-zgemmah11s-release_multi.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=zgemmah11s


elif [[ "$BOXNAME" == "gbue4k" ]];then
wget -O openatv-7.0-gbue4k-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=gbue4k

elif [[ "$BOXNAME" == "gbtrio4k" ]];then
wget -O openatv-7.0-gbtrio4k-release_mmc.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=gbtrio4k

elif [[ "$BOXNAME" == "gbquad4k" ]];then
wget -O openatv-7.0-gbquad4k-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=gbquad4k


elif [[ "$BOXNAME" == "vuzero4k" ]];then
wget -O openatv-7.0-vuzero4k-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=vuzero4k


elif [[ "$BOXNAME" == "vuuno4k" ]];then
wget -O openatv-7.0-vuuno4k-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=vuuno4k
  

elif [[ "$BOXNAME" == "vuuno4kse" ]];then 
wget -O openatv-7.0-vuuno4kse-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=vuuno4kse


elif [[ "$BOXNAME" == "vuduo4k" ]];then
wget -O openatv-7.0-vuduo4k-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=vuduo4k 


elif [[ "$BOXNAME" == "vuduo4kse" ]];then
wget -O openatv-7.0-vuduo4kse-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=vuduo4kse  


elif [[ "$BOXNAME" == "vusolo4k" ]];then
wget -O openatv-7.0-vusolo4k-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=vusolo4k  


elif [[ "$BOXNAME" == "vuultimo4k" ]];then
wget -O openatv-7.0-vuultimo4k-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=vuultimo4k

elif [[ "$BOXNAME" == "multibox" ]];then
wget -O openatv-7.0-novaler4k_multi.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=novaler4k 


elif [[ "$BOXNAME" == "multiboxse" ]];then
wget -O openbh-7.0-novaler4kse_multi.zip
http://images.mynonpublic.com/openatv/7.0/current.php?open=novaler4kse

elif [[ "$BOXNAME" == "sf4008" ]];then
wget -O openatv-7.0-sf4008-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=sf4008 

elif [[ "$BOXNAME" == "sf8008" ]];then
wget -O openatv-7.0-sf8008-release_usb.zip http://images.mynonpublic.com/openatv/7.0/current.php?open=sf8008

set +e

else

echo ' your device is not yet supported '
echo '
list of supported devices:
zgemma h7s 4k
zgemma h9s 4k
zgemma h9s se 4k 
zgemma h9 twin  4k
zgemma h9 twin  4k se
zgemma h11s 4k
gigablue ue 4k
gigablue trio 4k
gigablue quad 4k
novaler 4k
novaler 4k se
octagon sf4008 4k
octagon sf8008 4k
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


