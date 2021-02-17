#!/bin/sh

function print_usage() {
    echo "make_release_zip.sh [-h] <version>"
    echo ""
    echo "Script creates a zip file with the name htl_<version>.zip with the correct"
    echo "structure to upload it to https://mods.factorio.com/mod/htl/downloads/edit"
    echo ""
    echo "-h          Display this help text"
    echo "<version>   Version number to be used for filename and directory inside zip"
    echo "            e.g. 0.18.0"
}

if [ -z $1 ]; then
    print_usage
    exit 1
fi

if [ $1 == "-h" ]; then
    print_usage
    exit 0
fi

VERSION=$1
_scriptlocation="$(readlink -f ${BASH_SOURCE[0]})"
_ctdir="$(dirname $_scriptlocation)"

ln -sf $_ctdir /tmp/htl_${VERSION}

pushd /tmp
zip -r htl_${VERSION}.zip ./htl_${VERSION}/* --exclude *.sh
if [ $? -eq 0 ]; then
    popd
    echo "Succesfully created /tmp/htl_${VERSION}.zip"
    rm /tmp/htl_${VERSION}
    exit 0
else
    popd
    echo "Failed to create zip file"
    rm /tmp/htl_${VERSION}
    exit 1
fi

