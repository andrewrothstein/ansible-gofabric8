#!/usr/bin/env sh
VER=v0.4.176
DIR=~/Downloads
MIRROR=https://github.com/fabric8io/gofabric8/releases/download/$VER

dl()
{
    OS=$1
    PLATFORM=$2
    SUFFIX=${3:-}
    URL=$MIRROR/gofabric8-$OS-$PLATFORM$SUFFIX.sha256
    echo $URL
    curl -SsL $URL
}

dl darwin amd64
dl linux amd64
dl linux arm
dl windows amd64 .exe


