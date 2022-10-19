
cd /tmp
set -e
wget "https://raw.githubusercontent.com/join93/pro/main/astra-sm/enigma2-astra.tar.gz"
tar -xzf enigma2-astra.tar.gz -C /
set +e
rm -f enigma2-astra.tar.gz
wait
opkg install https://raw.githubusercontent.com/join93/pro/main/astra-sm/astra-sm.ipk
wait
sleep 2;
exit 0





























