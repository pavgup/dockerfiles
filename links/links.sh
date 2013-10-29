#!/bin/bash

function usage {
    echo "Usage: $0 {port|addr|var} {alias}"
    exit 1  
}

if [ "$#" != 2 ]; then
    usage
fi

if [ "$1" == "port" ]; then
    eval echo \$${2^^}_PORT | sed 's/tcp:\/\///g'  |  sed 's/udp:\/\///g' | cut -d : -f 2
elif [ "$1" == "addr" ]; then
    eval echo \$${2^^}_PORT | sed 's/tcp:\/\///g'  |  sed 's/udp:\/\///g' | cut -d : -f 1
elif [ "$1" == "var" ]; then
    eval echo \$${2^^}_ENV
else
    usage
fi
