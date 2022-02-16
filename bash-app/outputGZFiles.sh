#!/bin/bash
srcURL='http://ftp.debian.org/debian/dists/jessie/Release'
regex="^.*(\.gz)$" #se quitan los espacios y se cambia expresion regular
counter=0

if [[ ! -f $(command -v curl) ]]; then   #se niega el condicional
    echo "Error: curl not found -- exiting"
    exit 1
else 
    curlOutput=$(curl -s ${srcURL}) || echo "Error: curl unable to complete request" && \
        echo "${curlOutput}"  |grep -E "${regex}" |awk '{print "["NR"] Checksum: " $1 " FileName: "$3}'
fi