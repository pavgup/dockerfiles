#!/bin/bash

transmission-daemon -p 9090 $@
socat openssl-listen:9091,reuseaddr,cert=/data/ssl/server.pem,cafile=/data/ssl/server.crt,fork,verify=0 TCP:localhost:9090
