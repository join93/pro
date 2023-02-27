if [  -d "/hdd/" ]; then

echo 'Downloading OpenBlackHole Image please wait...'
sleep 10s

cd /hdd
set -e


if [ ! -d "/hdd/images" ]; then
mkdir /hdd/images
set +e
fi

cd /media/hdd/images
set -e

rm -rf openbh-5.2-zgemmah7s_multi.zip

wget -c  openbh-5.2-zgemmah7s_multi.zip https://images.openbh.net/latest/5.2/zgemmah7
set +e

if [  -d "/hdd/ImagesUpload" ]; then
cp /media/hdd/images/openbh-5.2-zgemmah7s_multi.zip  media/hdd/ImagesUpload/openbh-5.2-zgemmah7s_multi.zip
fi
echo " Chech your openblackhole image in media/hdd/images folder "
echo " :=====> ElieSat <=====: "

else
echo "Mount your external memory to media/hdd  and try again "

exit
fi