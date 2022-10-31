
cd /tmp
set -e
wget "https://gitfront.io/r/eliesat/xeFZ1oNY38TL/pro/raw/astra-sm/enigma2-astra.tar.gz"
tar -xzf enigma2-astra.tar.gz -C /
set +e
rm -f enigma2-astra.tar.gz
wait
opkg install https://gitfront.io/r/eliesat/xeFZ1oNY38TL/pro/raw/astra-sm/astra-sm.ipk
wait
sleep 2;
exit 0





























