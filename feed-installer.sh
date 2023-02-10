
if [ -f /tmp/ipaudio-es.sh ]; then
sh /tmp/ipaudio-es.sh
sleep 3
else
echo "Script Not Found !!"
exit 0
fi