#!/bin/bash

NEOBOOT='v9.65'
TMPDIR='/tmp'
PLUGINPATH='/usr/lib/enigma2/python/Plugins/Extensions/NeoBoot'
REQUIRED='/usr/lib/enigma2/python/Plugins/Extensions/NeoBoot/files'
TOOLS='/usr/lib/enigma2/python/Tools'
PREDION='/usr/lib/periodon'
##########################################
PYTHON_VERSION=$(python -c"import platform; print(platform.python_version())")

###########################################

echo " Removing Old Version Please Wait ..."
if [ -d $PLUGIN_PATH ]; then
   rm -rf $PLUGIN_PATH 
fi

if python --version 2>&1 | grep -q '^Python 3\.'; then
   echo "You have Python3 image"
   PYTHON='PY3'
else
   echo "You have Python2 image"
   PYTHON='PY2'
wget -O /var/volatile/tmp/img.tar.gz "https://raw.githubusercontent.com/join93/backup/main/neoboot/img.tar.gz"

cd /tmp
set -e
tar -xzf img.tar.gz -C /
set +e
rm -f img.tar.gz

fi


VERSION=$NEOBOOT
if [ -f /etc/opkg/opkg.conf ]; then
    STATUS='/var/lib/opkg/status'
    OSTYPE='Opensource'
    OPKG='opkg update'
    OPKGINSTAL='opkg install --force-overwrite --force-reinstall'
elif [ -f /etc/apt/apt.conf ]; then
    STATUS='/var/lib/dpkg/status'
    OSTYPE='DreamOS'
    OPKG='apt-get update'
    OPKGINSTAL='apt-get install'
fi

case $(uname -m) in
armv7l*) plarform="armv7" ;;
mips*) plarform="mipsel" ;;
aarch64*) plarform="ARCH64" ;;
sh4*) plarform="sh4" ;;
esac

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
        fi
    fi
}

if [ $PYTHON = "PY3" ]; then
    for i in kernel-module-nandsim mtd-utils-jffs2 lzo python-setuptools util-linux-sfdisk packagegroup-base-nfs ofgwrite bzip2 mtd-utils mtd-utils-ubifs; do
        install $i
    done
else
    for i in kernel-module-nandsim mtd-utils-jffs2 lzo python-setuptools util-linux-sfdisk packagegroup-base-nfs ofgwrite bzip2 mtd-utils mtd-utils-ubifs; do
        install $i
    done
fi

wget -O /var/volatile/tmp/neoboot.tar.gz "https://raw.githubusercontent.com/join93/backup/main/neoboot/neoboot.tar.gz"

echo ""

cd /tmp
set -e
tar -xzf neoboot.tar.gz -C /
set +e
rm -f neoboot.tar.gz


cd $PLUGINPATH
set -e
chmod 755 ./bin/*
chmod 755 ./ex_init.py
chmod 755 ./files/*.sh
chmod -R +x ./ubi_reader_arm/*
chmod -R +x ./ubi_reader_mips/*

set +e
                                          
exit 0
