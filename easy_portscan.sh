#!/bin/bash
#Super easy netcat portscan for use with Proxychains.  Syntax:  ./easy_portscan.sh <ip-address-of-target> <max-port-to-scan>
ADDRESS=$1
MAXPORT=$2
for i in `seq 1 $MAXPORT`; do nc -z -v $ADDRESS $i 2>&1 | grep open | sed "s/(UNKNOWN)//" | sed "s/:.*//"; done