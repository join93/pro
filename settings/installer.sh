init 2 
cd /tmp 
set -e  
tar -xzf settings.tar.gz -C / 
set +e 
init 4; sleep 5; init 3 






