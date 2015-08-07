#!/bin/bash
echo "Requesting a new ip from the tor network"
printf "AUTHENTICATE\r\nSIGNAL NEWNYM\r\nquit\r\n" | nc 127.0.0.1 9051 # Request a new ip from the tor network
echo "Getting ip from ipchicken.com"
IP="$(curl --socks5-hostname 127.0.0.1:9050 http://www.ipchicken.com | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')" # Download ipchicken.com and grep our ip address to the IP variable
echo "Our ip current ip is ${IP}"

