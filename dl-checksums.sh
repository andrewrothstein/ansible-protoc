#!/usr/bin/env sh
set -e
DIR=~/Downloads
GHUSER=protocolbuffers
APP=protoc
MIRROR=https://github.com/${GHUSER}/protobuf/releases/download

dl() {
    local ver=$1
    local platform=$2
    local archive_type=${3:-zip}

    local file="${APP}-${ver}-${platform}.${archive_type}"
    local lfile=$DIR/$file
    local url="$MIRROR/v$ver/$file"

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1

    printf "  '%s':\n" $ver

    dl $ver linux-aarch_64
    dl $ver linux-ppcle_64
    dl $ver linux-s390_64
    dl $ver linux-x86_32
    dl $ver linux-x86_64
    dl $ver osx-aarch_64
    dl $ver osx-x86_64
    dl $ver win32
    dl $ver win64
}

dl_ver ${1:-26.0}
