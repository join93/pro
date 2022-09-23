#!/bin/bash
# ###########################################
# SCRIPT : DOWNLOAD AND INSTALL E2IPLAYER_TSiplayer
# ###########################################
#
# Command: wget -q "--no-check-certificate" http://ipkinstall.ath.cx/ipk-install/E2IPLAYER-DREAMSATPANEL/e2iplayer.sh -O - | /bin/sh
#
# ###########################################
versions="20.09.2022"
###########################################
# Configure where we can find things here #
TMPDIR='/tmp'
PLUGINPATH='/usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer'
SETTINGS='/etc/enigma2/settings'
URL='http://ipkinstall.ath.cx/ipk-install'
#PYTHON_VERSION=$(python -c"import sys; print(sys.hexversion)")
PYTHON_VERSION=$(python -c"import platform; print(platform.python_version())")
# FILE=/usr/lib/enigma2/python/Components/
# PY=Input.pyc
# SPA=/usr/bin/OpenSPA.info
#########################
VERSION=$(wget $URL/E2IPLAYER-PY3-DREAMSATPANEL/e2iplayer-py3.sh -qO- | grep 'version=' | cut -d "=" -f2- | sed 's/^"\(.*\)".*/\1/')

########################
if [ -f /etc/opkg/opkg.conf ]; then
    STATUS='/var/lib/opkg/status'
    OSTYPE='Opensource'
    OPKG='opkg update'
    OPKGINSTAL='opkg install'
elif [ -f /etc/apt/apt.conf ]; then
    STATUS='/var/lib/dpkg/status'
    OSTYPE='DreamOS'
    OPKG='apt-get update'
    OPKGINSTAL='apt-get install'
fi

#########################
if [ "$PYTHON_VERSION" == 3.9.9 -o "$PYTHON_VERSION" == 3.9.7 ]; then
    echo ":You have $PYTHON_VERSION image ..."
    PLUGINPY3='E2IPLAYER_TSiplayer-PYTHON3.tar.gz'
    rm -rf ${TMPDIR}/"${PLUGINPY3:?}"
elif [ "$PYTHON_VERSION" == 3.8.5 ]; then
    echo ":You have $PYTHON_VERSION image ..."
    PLUGINPY5='E2IPLAYER_TSiplayer-py3.8.5-openspa.tar.gz'
    rm -rf ${TMPDIR}/"${PLUGINPY5:?}"    
elif [ "$PYTHON_VERSION" == 3.10.4 ]; then
    echo ":You have $PYTHON_VERSION image ..."
    PLUGINPY4='E2IPLAYER_TSiplayer-PYTHON310.tar.gz'
    rm -rf ${TMPDIR}/"${PLUGINPY4:?}"
elif [ "$PYTHON_VERSION" == 3.10.6 ]; then
    echo ":You have $PYTHON_VERSION image ..."
    PLUGINPY5='E2IPLAYER_TSiplayer-PYTHON316.tar.gz'
    rm -rf ${TMPDIR}/"${PLUGINPY5:?}"    
else
    echo ":You have $PYTHON_VERSION image ..."
    PLUGINPY2='E2IPLAYER_TSiplayer.tar.gz'
    rm -rf ${TMPDIR}/"${PLUGINPY2:?}"
fi

#########################
case $(uname -m) in
armv7l*) plarform="armv7" ;;
mips*) plarform="mipsel" ;;
aarch64*) plarform="ARCH64" ;;
sh4*) plarform="sh4" ;;
esac

#########################
rm -rf ${PLUGINPATH}
rm -rf /etc/enigma2/iptvplaye*.json
rm -rf /etc/tsiplayer_xtream.conf
rm -rf /iptvplayer_rootfs
rm -rf /usr/lib/enigma2/python/Components/Input.py
rm -rf /usr/bin/lsdir

#########################
install() {
    if grep -qs "Package: $1" $STATUS; then
        echo
    else
        $OPKG >/dev/null 2>&1
        echo "   >>>>   Need to install $1   <<<<"
        echo
        if [ $OSTYPE = "Opensource" ]; then
            $OPKGINSTAL "$1"
            sleep 1
            clear
        elif [ $OSTYPE = "DreamOS" ]; then
            $OPKGINSTAL "$1" -y
            sleep 1
            clear
        fi
    fi
}

#########################
if [ "$PYTHON_VERSION" == 3.9.9 -o "$PYTHON_VERSION" == 3.9.7 -o "$PYTHON_VERSION" == 3.8.5 ] || [ "$PYTHON_VERSION" == 3.10.4 ] || [ "$PYTHON_VERSION" == 3.10.6 ]; then
    for i in enigma2-plugin-systemplugins-serviceapp ffmpeg gstplayer duktape wget python3-sqlite3; do
        install $i
    done
else
    for i in enigma2-plugin-systemplugins-serviceapp ffmpeg gstplayer duktape hlsdl wget python-sqlite3; do
        install $i
    done
fi

#########################
clear

if [ "$PYTHON_VERSION" == 3.9.9 -o "$PYTHON_VERSION" == 3.9.7 ]; then
    echo "Downloading And Insallling IPTVPlayer-$PYTHON_VERSION plugin Please Wait ......"
    echo
    wget --show-progress $URL/E2IPLAYER-DREAMSATPANEL/$PLUGINPY3 -qP $TMPDIR
    tar -xzf $TMPDIR/$PLUGINPY3 -C /
elif [ "$PYTHON_VERSION" == 3.8.5 ]; then
    echo "Downloading And Insallling IPTVPlayer-$PYTHON_VERSION plugin Please Wait ......"
    echo
    wget --show-progress $URL/E2IPLAYER-DREAMSATPANEL/$PLUGINPY5 -qP $TMPDIR
    tar -xzf $TMPDIR/$PLUGINPY5 -C /    
elif [ "$PYTHON_VERSION" == 3.10.4 ]; then
    echo "Downloading And Insallling IPTVPlayer-$PYTHON_VERSION plugin Please Wait ......"
    echo
    wget --show-progress $URL/E2IPLAYER-DREAMSATPANEL/$PLUGINPY4 -qP $TMPDIR
    tar -xzf $TMPDIR/$PLUGINPY4 -C /
elif [ "$PYTHON_VERSION" == 3.10.6 ]; then
    echo "Downloading And Insallling IPTVPlayer-$PYTHON_VERSION plugin Please Wait ......"
    echo
    wget --show-progress $URL/E2IPLAYER-DREAMSATPANEL/$PLUGINPY5 -qP $TMPDIR
    tar -xzf $TMPDIR/$PLUGINPY5 -C /    
else
    echo "Downloading And Insallling IPTVPlayer-$PYTHON_VERSION plugin Please Wait ......"
    echo
    wget --show-progress $URL/E2IPLAYER-DREAMSATPANEL/$PLUGINPY2 -qP $TMPDIR
    tar -xzf $TMPDIR/$PLUGINPY2 -C /
fi

#########################
if [ -d $PLUGINPATH ]; then
    echo ":Your Device IS $(uname -m) processor ..."
    echo "Add Setting To ${SETTINGS} ..."
    sleep 5
    init 4
    #sleep 2
    sed -e s/config.plugins.iptvplayer.*//g -i ${SETTINGS}
    sleep 1
    {
        echo "config.plugins.iptvplayer.AktualizacjaWmenu=false"
        echo "config.plugins.iptvplayer.SciezkaCache=/etc/IPTVCache/"
        echo "config.plugins.iptvplayer.alternative${plarform^^}MoviePlayer=extgstplayer"
        echo "config.plugins.iptvplayer.alternative${plarform^^}MoviePlayer0=extgstplayer"
        echo "config.plugins.iptvplayer.buforowanie_m3u8=false"
        echo "config.plugins.iptvplayer.default${plarform^^}MoviePlayer=exteplayer"
        echo "config.plugins.iptvplayer.default${plarform^^}MoviePlayer0=exteplayer"
        echo "config.plugins.iptvplayer.remember_last_position=true"
        echo "config.plugins.iptvplayer.extplayer_skin=red"
        echo "config.plugins.iptvplayer.extplayer_infobanner_clockformat=24"       
        echo "config.plugins.iptvplayer.plarform=${plarform}"
        echo "config.plugins.iptvplayer.dukpath=/usr/bin/duk"
        echo "config.plugins.iptvplayer.wgetpath=wget"        
    } >>${SETTINGS}
fi

#########################
if [ "$PYTHON_VERSION" == 3.9.9 -o "$PYTHON_VERSION" == 3.9.7 ]; then
    rm -rf ${TMPDIR}/"${PLUGINPY3:?}"
elif [ "$PYTHON_VERSION" == 3.8.5 ]; then
    rm -rf ${TMPDIR}/"${PLUGINPY5:?}"    
elif [ "$PYTHON_VERSION" == 3.10.4 ]; then
    rm -rf ${TMPDIR}/"${PLUGINPY4:?}"
elif [ "$PYTHON_VERSION" == 3.10.6 ]; then
    rm -rf ${TMPDIR}/"${PLUGINPY5:?}"    
else
    rm -rf ${TMPDIR}/"${PLUGINPY2:?}"
fi

exit 0
