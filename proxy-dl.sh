#!/bin/bash
echo "Enter url of the file you want to download?: "
read URL
DOMAIN=$(echo $URL | awk -F/ '{print $3}')
echo "Resolving hostname...."
TOR_IP=$(tor-resolve $DOMAIN)
RESOLVE=$(echo $URL | sed "s/$DOMAIN/$TOR_IP/g")
echo "Downloading file from: " "$RESOLVE"
proxychains wget -v $RESOLVE &> /dev/null
echo "Download Finished!"
